Rails.application.routes.draw do
  resources :articles
  devise_for :users
  get 'dashboard/index'
  root 'home#index'

end