Rails.application.routes.draw do
  resources :transactions
  devise_for :users
  get 'sessions/new'
  resources :giftmojis
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
