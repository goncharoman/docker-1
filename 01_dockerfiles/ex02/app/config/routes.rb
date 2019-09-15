Rails.application.routes.draw do
  devise_for :users
  resources :comments
  root 'articles#index'
  resources :articles
  get '/:name' => 'articles#user_articles', as: :user_articles
end
