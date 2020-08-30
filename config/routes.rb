Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users
  
  get '/super_admin/', to: 'users#super_admin'
  get '/admin/', to: 'users#admin'
  get '/member/', to: 'users#member'
  # get '/super_admin/', to: 'users#super_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
