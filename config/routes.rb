IndieTheater::Application.routes.draw do
  devise_for :customers, :controllers => { :omniauth_callbacks => "customers/omniauth_callbacks" }
  devise_for :admins

  root :to => "pages#index"

  resources :pages, :only => [:index] 
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  
  resources :customers
  resources :admins
  resources :movies
  resources :showtimes
  resources :orders
  resources :cart_items
  resources :reviews
end
