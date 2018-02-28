Rails.application.routes.draw do
  resources :questions, only: [:index, :show]
  devise_for :users
  root to: 'questions#index'
end
