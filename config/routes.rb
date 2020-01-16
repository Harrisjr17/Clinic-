Rails.application.routes.draw do

  resources :categories
  resources :hosts
  resources :posts

  # this sets the default page where the website loads to
  root to: 'posts#index'

end
