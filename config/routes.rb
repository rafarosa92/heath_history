Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get 'home/index'

  resources :appointments
  resources :treatments
  resources :shared_histories
  resources :exams
end
