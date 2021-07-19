Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :users, only: :show
  resources :reservations
  get 'my_calendar', to: 'reservations#my_calendar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
