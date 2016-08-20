Rails.application.routes.draw do
  root 'sites#index'
  resources :sites
  resources :themes
  resources :temps
  resources :menus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
