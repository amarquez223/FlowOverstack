Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :new, :create] do
  	resource :qvote, only: [:create, :destroy]
  	resources :qcomments, only: [:create]
  end

  devise_for :users
  
  root to: 'questions#index'

end
