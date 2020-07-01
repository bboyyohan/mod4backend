Rails.application.routes.draw do
  resources :user_owned_guns
  resources :users
  resources :guns
  resources :bullet_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
