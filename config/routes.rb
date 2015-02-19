Rails.application.routes.draw do
  # getting static pages
  get "pages/about", :as => 'about_page'
  get "pages/payment_options", :as => 'payment_options_page'
  get "pages/how_to_advertise", :as => 'how_to_advertise_page'
  get "pages/professional_account", :as => 'professional_account_page'
  resources :photos

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :advertises

  root to: 'visitors#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users
  match '/user/:id/finish_signup' => 'user#finish_signup', via: [:get, :patch], :as => :finish_signup
  mount Commontator::Engine => '/commontator'

end
