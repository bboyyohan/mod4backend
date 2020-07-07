Rails.application.routes.draw do
  resources :user_owned_guns
  # resources :users
  resources :guns, only: :index
  resources :bullet_types, only: :index

  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      post '/login', to: 'auth#create'
      # get 'users/:id/user_owned_guns', to: 'user_owned_guns#getUserGuns'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
