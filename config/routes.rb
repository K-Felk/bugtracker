Rails.application.routes.draw do
  resources :users
  get 'bugs/index'
  resources :bugs
  root 'bugs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
