Rails.application.routes.draw do
  resources :employees
  devise_for :users
  root "dashboard#index"
end
