Rails.application.routes.draw do
  devise_for :users
  get :index, to: 'home#index'
  get :contact, to: 'home#contact'
  root to: "home#index"
  resources :messages, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
