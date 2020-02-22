Rails.application.routes.draw do
  get 'quotes/index'
  get 'quotes/show'
  get 'quotes/new'
  get 'quotes/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :celebrities, only: %i[index show]

  root 'celebrities#index'
end
