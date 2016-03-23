Rails.application.routes.draw do
  resources :students
  resources :employees
  devise_for :users
  root "dashboard#index"
end
