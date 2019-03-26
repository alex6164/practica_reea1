Rails.application.routes.draw do
  get 'users/new'
  root 'books#index'

  resources :books
  resources :categories
end
