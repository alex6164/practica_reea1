Rails.application.routes.draw do
  get 'categories/new'
  root 'books#index'

  resources :books
  resources :categories
end
