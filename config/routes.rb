Rails.application.routes.draw do
  resources :data_types, path: 'types'
  resources :mykis
  resources :passports
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  get 'api/id_info', to: 'apis#info'
end
