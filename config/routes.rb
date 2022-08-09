Rails.application.routes.draw do
  resources :products do
    collection do
      get :autocomplete
    end
  end
  resources :images do
    member do
      delete :delete_image   #to delete image which is inside image_name
      delete :delete_documents  #to delete documents images 
    end
  end
  resources :users
end
