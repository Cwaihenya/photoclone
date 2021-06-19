Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
