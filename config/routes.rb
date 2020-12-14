Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get 'home/index'

  resources :appointments
  resources :treatments
  resources :shared_histories
  resources :exams
  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user
  patch 'update_user' => 'users#update', as: :update_user
end
