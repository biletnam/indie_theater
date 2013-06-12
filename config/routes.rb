IndieTheater::Application.routes.draw do
  devise_for :admins

  root :to => "pages#index"

  resources :pages, :only => [:index]
  
  resources :admins
  resources :movies
  resources :showtimes
end
