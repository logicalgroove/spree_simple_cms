module Spree
	module Admin 
		class ContentBlocksController < Spree::Admin::ResourceController
			def index
				@content_blocks = Spree::ContentBlock.all_from_keys
			end
		end
	end
end