Rails.application.routes.draw do
  devise_for :users
  post '/users/sign_up', to: 'devise/registrations#create'
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :users, only: [:index, :new]
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
end