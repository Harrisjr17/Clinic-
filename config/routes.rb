Rails.application.routes.draw do

  resources :patients

  # # this sets the default page where the website loads to
   root to: 'patients#index'

end
