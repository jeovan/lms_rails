Rails.application.routes.draw do
  resources :perfis
  devise_for :usuarios
  resources :pessoas
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
