Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :carpool_rides
end
