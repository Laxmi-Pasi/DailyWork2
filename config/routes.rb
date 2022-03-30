require 'sidekiq/web'
Rails.application.routes.draw do
  resources :images do
    member do
      delete :delete_image   #to delete image which is inside image_name
      delete :delete_documents  #to delete documents images 
    end
  end
  mount Sidekiq::Web => '/sidekiq'
  resources :users
end
