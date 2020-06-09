Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  get 'players/new'
  get 'players/create'
  get 'players/edit'
  get 'players/update'
  get 'players/delete'
  devise_for :users
  root to: 'pages#home'
  resources :game_sessions
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
