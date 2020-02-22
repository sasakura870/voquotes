Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quotes, only: %i[index show new create]
  resources :celebrities, only: %i[index show]

  root 'celebrities#index'
end
