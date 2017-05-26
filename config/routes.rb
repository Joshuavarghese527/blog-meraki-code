Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'clean_blogs#index'
get  'about'  => 'clean_blogs#about'
get  'contact'  => 'clean_blogs#contact'

  resources :posts
end
