Rails.application.routes.draw do
  resources :giftmoji_emotions
  resources :emotions
  resources :occasions
  devise_for :users
  resources :giftmojis
  resources :users

  get 'sessions/new'
  get '/users/:id' => 'users#show'
  get '/users/new' => 'users#new'
  get '/' =>'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
