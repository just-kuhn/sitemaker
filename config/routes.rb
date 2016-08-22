Rails.application.routes.draw do
  resources :maps
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :users, controllers: { registrations: 'registrations'}
  root 'sites#index'
  resources :sites do
    member do
      put 'like' => 'sites#upvote'
      put 'dislike' => 'sites#downvote'
    end
  end

  resources :themes
  resources :temps
  resources :menus


  get '/:user_id/:site_id' => 'sites#show'
  get 'auth/:provider/callback', to:'sessions#create'
  get 'sign_out', to:'sessions#destroy', as:'sign_out'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
