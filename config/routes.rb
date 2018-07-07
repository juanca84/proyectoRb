Rails.application.routes.draw do
  resources :personal, only: :index
  resources :agencias, only: :index
  root to: 'welcome#index'
  get 'welcome/index'
end
