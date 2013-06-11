IndieTheater::Application.routes.draw do
  root :to => "pages#index"

  resources :pages, :only => [:index]
  
  resources :movies
end
