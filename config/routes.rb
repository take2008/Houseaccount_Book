Rails.application.routes.draw do
  root 'housebooks#index'
  resources :housebooks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
