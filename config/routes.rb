Rails.application.routes.draw do
  resources :flavors
  devise_for :users
  root 'pages#home'

  get 'pages/grape'
  get 'pages/cherry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
