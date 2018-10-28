Rails.application.routes.draw do
  root :to => 'login#index', :as => :root

  get '/users/login', to: 'login#check_login'
  get '/users/dashboard', to: 'login#dashboard'
  get '/users/images/delete/:id', to: 'images#delete_image'

  resources :images


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
