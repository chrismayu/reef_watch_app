ReefWatchApp::Application.routes.draw do
  resources :reef_tanks


  resources :watchers
 root :to => "reef_tanks#index"

  authenticated :user do
   root :to => "reef_tanks#index"
  end
 
  devise_for :users
  resources :users
end