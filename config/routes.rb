Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get '/home(/:hello)', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
