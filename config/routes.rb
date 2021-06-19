Rails.application.routes.draw do
  get 'sessions/new'
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  root "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
