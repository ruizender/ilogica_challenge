Rails.application.routes.draw do
  get 'home/index'
  get 'home/contact'
  root to: "home#index"
  resources :messages, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
