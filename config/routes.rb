Rails.application.routes.draw do
  resources :posts, except: [:index]
  root "home#index"
  
  get '/posts', to: 'posts#index', as: 'user_root'

devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
