Rails.application.routes.draw do

  get 'sessions/new'
  resources :giftmoji_emotions
  resources :emotions
  resources :occasions
  devise_for :users
  resources :giftmojis
  resources :users
  resources :sessions

  devise_scope :user do
  get 'login', to: 'sessions#new'
  get '/signup' => 'users#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
end

  get '/' =>'application#index'
  get '/users/:id' => 'users#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
