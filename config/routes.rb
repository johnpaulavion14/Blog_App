Rails.application.routes.draw do
  resources :articles
  delete "articles/:id" => 'articles#destroy', as: "delete_article"

  devise_for :users
  get 'dashboard/index'
  root 'home#index'

end