Rails.application.routes.draw do
  root to: 'rental_houses#index'
  resources :rental_houses
end
