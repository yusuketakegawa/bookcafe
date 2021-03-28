Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :users, only: :show

  resources :rooms, only: [:new, :create, :destroy] do
    resources :talks, only: [:index, :create]
  end
  resources :books do
    resources :comments, only: :create
  end
end
