Rails.application.routes.draw do
  root 'products#index'
  get 'products/index'
  get 'products/carts'
  resources :products_cart
  devise_for :users, controllers: {
      confirmations: 'users/confirmations',
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations',
      unlocks: 'users/unlocks',
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
