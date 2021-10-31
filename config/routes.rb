Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  resources :elves
  resources :dwarves
  resources :rogues
  resources :wizards
  get 'warriors/index'
  get 'warriors/jax'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/champions/', to: 'champions#index'
end
