JobProbe::Application.routes.draw do
  devise_for :users, :admin, :ads, :recruiters, :jobs

  resources :ads
  resources :recruiters
  resources :jobs

  resources :home, :only => :index
  resources :admins, :only => :index

  root :to => 'home#index'

  match '/token' => 'home#token', :as => :token
end
