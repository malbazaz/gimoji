Rails.application.routes.draw do

  #Application
  get '/' =>'application#index'

  #Resources for Objects (Emotions, Occasions and Giftmojis)
  resources :emotions

  resources :occasions

  resources :giftmojis
  post '/giftmoji/:id/buy' => 'users#update'

  #Nested resource for (Occasion - Gimojis)
  resources :occasions, only [:show, :index] do 
    resources :giftmojis, only [:show, :index]
  end 

  #Nested resource (User -> Gimojis) ??

  #Login 
  get 'sessions/new'
  resources :sessions
  resources :users
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' },  path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'signup' }
   get '/users/:id' => 'users#show'


 # devise_scope :user do
 # get 'login', to: 'sessions#new'
 # get '/signup' => 'users#new'
 # post '/login' => 'sessions#create'
 # get  '/logout' => 'sessions#destroy'
 # post '/logout' => 'sessions#destroy'
 # end

end
