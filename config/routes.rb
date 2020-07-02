Rails.application.routes.draw do
  resources :user_owned_guns
  resources :users
  resources :guns, only: :index
  resources :bullet_types, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
