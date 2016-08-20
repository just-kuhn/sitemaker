Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: { registrations: 'registrations'}
  root 'sites#index'
  resources :sites
  resources :themes
  resources :temps
  resources :menus

  get 'auth/:provider/callback', to:'sessions#create'
  get 'sign_out', to:'sessions#destroy', as:'sign_out'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
