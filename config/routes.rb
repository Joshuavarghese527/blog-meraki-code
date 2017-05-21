Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'clean_blogs#index'
get  'about'  => 'clean_blogs#about'
get  'post'   => 'clean_blogs#post'
get  'contact'  => 'clean_blogs#contact'
end
