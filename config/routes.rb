Rails.application.routes.draw do
  
  get 'dashboard', to: "dashboard#index"

  resources :messages
  resources :faqs
  resources :boosts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => "users/registrations", :sessions => "users/sessions"}
  
  get 'terms/', to: "terms#index"
  get 'privacy-policy/', to: "privacy#index"

  resources :states
  get 'home/index'
  get 'home/index_barter'
  get 'home/index_cash'
  get 'home/howitworks'
  resources :product_images
  resources :products 
  
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
