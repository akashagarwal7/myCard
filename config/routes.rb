Rails.application.routes.draw do
  get 'receiver/home'

  resources :data_types, path: 'types'
  resources :mykis
  resources :passports
  resources :users

  get 'info', to: 'apis#info'
  root 'receiver/home', to: 'receiver#home'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
