class Spree::ContentBlock < ActiveRecord::Base
	has_many :images, ->{ order(position: :asc) }, as: :viewable, class_name: 'ContentImage', dependent: :destroy

	#alias the association so resource controller works
	alias :content_images :images

	alias_attribute :key, :keyy

	def self.keys
		[]
	end

	def has_images?
		!!(key =~ /(image)/)
	end

	def truncate_content
		return content.truncate(30) if content
		''
	end

	def self.find_by_page(page)
		where("keyy LIKE ?", "%#{page}%")
	end

	def self.all_from_keys
		#return an instance for each key and create if not in db
		disjunction = keys - all.map(&:keyy)
		if disjunction.any?
			disjunction.each do |key|
				self.create(keyy: key)
			end
		end
		all
	end
end