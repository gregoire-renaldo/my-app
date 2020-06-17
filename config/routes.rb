Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :game_sessions do
    resources :players
  end
    resources :users do
    get :current, on: :collection #-> url.com/users/current -> users#current
  end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
