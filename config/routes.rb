Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :content_blocks do 
      resources :images, controller: :content_images do 
        post :update_positions, on: :collection
      end
    end
  end
end
