Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resources :posts
  end

  resources :comments
  root 'staticpages#landing'


end
