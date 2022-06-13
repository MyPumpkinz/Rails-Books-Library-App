Rails.application.routes.draw do
  get 'search', to: 'search#index'

  devise_for :users
  resources :downloads
  resources :books do 
    resources :reviews
  end

  root to: 'books#index'
end
