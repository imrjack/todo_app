Rails.application.routes.draw do
  root "tasks#index"

  get 'register'=> 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :users, only: [:create, :edit, :update, :show]
  resources :statc_pages, only: :index
  resources :tasks

end
