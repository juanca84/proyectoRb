Rails.application.routes.draw do
  resources :agencias, only: :index
  root to: 'welcome#index'
  get 'welcome/index'
end
