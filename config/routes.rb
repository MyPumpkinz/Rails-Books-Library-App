Rails.application.routes.draw do
  get 'search', to: 'search#index'
  devise_for :users
  resources :books

  root to: 'books#index'
end
