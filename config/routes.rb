Rails.application.routes.draw do

  get '/cart' => 'cart#index'
  get '/clear' => 'cart#clear'
  get '/cart/:id' => 'cart#add'
  get '/checkout' => 'cart#checkout'

  devise_for :users
  resources :products
  root 'page#home'

  get 'page/about'

  get 'page/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
