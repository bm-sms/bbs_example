Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, class_name: "Bbs::User"
  root to: 'welcome#index'

  mount Bbs::Engine => '/bbs'
end
