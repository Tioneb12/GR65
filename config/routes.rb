Rails.application.routes.draw do
  root to: 'flats#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flats, only:[:show]
end
