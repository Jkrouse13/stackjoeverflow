Rails.application.routes.draw do
  resources :queries do
    resources :answers
  end

  root 'queries#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
