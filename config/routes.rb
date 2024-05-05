Rails.application.routes.draw do
  devise_for :users
  post '/users/sign_up', to: 'devise/registrations#create'
  root to: "prototypes#index"
  resources :users, only: [:index, :new, :show]

  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
      post 'edit', to: 'prototypes#update'
  end


  resources :comments, only: [:create]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end