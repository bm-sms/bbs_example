Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  ActiveAdmin.routes(self)

  root to: 'welcome#index'

  mount Bbs::Engine => '/bbs'
end
