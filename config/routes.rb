Rails.application.routes.draw do
  devise_for :ore_users
  resources :oremeshis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'oremeshis#index'

end
