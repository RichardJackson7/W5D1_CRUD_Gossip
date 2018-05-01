Rails.application.routes.draw do
  get 'comments/new'
  root 'static_pages#home'

  resources :gossips do
  	resources :comments
  end
end
