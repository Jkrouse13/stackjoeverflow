Rails.application.routes.draw do
  resources :queries
  get 'queries/index'

  get 'queries/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
