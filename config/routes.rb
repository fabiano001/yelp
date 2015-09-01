Rails.application.routes.draw do
  get '/' => 'pages#home', as: :home
  resources :reviews
  resources :users
  resources :restaurants
end
