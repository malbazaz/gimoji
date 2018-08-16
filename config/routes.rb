Rails.application.routes.draw do

  get 'sessions/new'
  resources :giftmoji_emotions
  resources :emotions
  resources :occasions
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' },  path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'signup' }
  resources :giftmojis
  resources :users
  resources :sessions

 # devise_scope :user do
 # get 'login', to: 'sessions#new'
 # get '/signup' => 'users#new'
 # post '/login' => 'sessions#create'
 # get  '/logout' => 'sessions#destroy'
 # post '/logout' => 'sessions#destroy'
 # end

  get '/' =>'application#index'
  get '/users/:id' => 'users#show'
  post '/giftmoji/:id/buy' => 'users#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
