Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :powers, only: [:show, :index,:update]
  resources :hero_powers, only: [:show, :index, :create, :update]
  resources :heroes, only: [:index, :show]

end
