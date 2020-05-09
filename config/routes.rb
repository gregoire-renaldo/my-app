Rails.application.routes.draw do
  get 'gamesessions/index'
  get 'gamesessions/show'
  get 'gamesessions/new'
  get 'gamesessions/create'
  get 'gamesessions/edit'
  get 'gamesessions/update'
  get 'gamesessions/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index, :show, :edit, :update ]
  resources :places
  resources :gamesessions
end
