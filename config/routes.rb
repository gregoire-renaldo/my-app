Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
  get :current, on: :collection #-> url.com/users/current -> users#current
end
  resources :game_sessions do
    resources :players
  end
  resources :players, only: [ :destroy ]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
