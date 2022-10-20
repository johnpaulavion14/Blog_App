Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :articles
  delete "articles/:id" => 'articles#destroy', as: "delete_article"

  get 'dashboard/index'
  root 'home#index'

end