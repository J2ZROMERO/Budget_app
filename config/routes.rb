Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'users/confirmations', 
  passwords: 'users/passwords',
  registrations: 'users/registrations', sessions: 'users/sessions' }

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/users/password', to: 'users/passwords#create'
    get '/users/sessions', to: 'users/sessions#index'
    root 'users/sessions#index'
  end
  
  
  
  resources :groups do
    resources :budgets, only: [:new, :create, :index, :destroy]
  end
  resources :users, only: [:index, :update, :destroy, :create]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
