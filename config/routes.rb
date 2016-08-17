Rails.application.routes.draw do
  root to: 'welcome#index'

  mount Bbs::Engine => '/bbs'
end
