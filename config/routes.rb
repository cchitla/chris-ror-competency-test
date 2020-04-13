Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show', as: 'category'
end
