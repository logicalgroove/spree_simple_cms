Spree::StoreController.class_eval do 
	def load_content(page)
		@contents = Spree::ContentBlock.includes(:images).find_by_page(page).map do |block|
			[block.key, block]
		end.to_h
	end
end