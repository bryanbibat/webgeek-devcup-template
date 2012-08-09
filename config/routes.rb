WebgeekDevcup::Application.routes.draw do
  devise_for :users

  resources :samples

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'home#index'

  get "home/index"
end
