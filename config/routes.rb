Rails.application.routes.draw do

  root "pages#show", page: "home"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/pages/:page" => "pages#show"
  resources :flats, only:[:index,:show,:new,:create]

  # resource :user, only: [] do
  # end
  resources :profils, only: [:show, :new, :create, :update]
  # resources :flats, only: []

end
