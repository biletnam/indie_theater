IndieTheater::Application.routes.draw do
  devise_for :customers, :controllers => { :omniauth_callbacks => "customers/omniauth_callbacks" }
  devise_for :admins

  root :to => "pages#index"

  resources :pages, :only => [:index] 
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  
  resources :customers
  resources :admins, :except => [:show]
  resources :movies
  resources :showtimes, :only => [:index, :show]
  resources :orders, :only => [:show, :create, :destroy]
  resources :cart_items, :only => [:create, :destroy]
  resources :reviews, :except => [:index, :show]
end
