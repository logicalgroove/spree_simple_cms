module Spree
	module Admin
		class ContentImagesController < ResourceController
			belongs_to 'spree/content_block'

			def index
				@collection = @collection.to_a
			end

			protected

			def location_after_save
				admin_content_block_images_url(@content_block)
			end

			def location_after_destroy
				admin_content_block_images_url(@content_block)
			end
		end
	end
end
