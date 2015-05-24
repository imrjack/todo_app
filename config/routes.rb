Rails.application.routes.draw do
  root "static_pages#index"

  resources :statc_pages, only: :index
  resources :tasks
end
