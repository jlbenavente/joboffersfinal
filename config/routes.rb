Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  root 'joboffers#index'
  resources :joboffers
  resources :communes
  resources :cities
  resources :regions
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
