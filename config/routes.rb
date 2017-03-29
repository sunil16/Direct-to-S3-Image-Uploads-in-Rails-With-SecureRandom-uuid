Rails.application.routes.draw do
  get 'image_uploads/new'

  get 'image_uploads/create'

  get 'image_uploads/index'
  root 'image_uploads#new'
  resources :image_uploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
