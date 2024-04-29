Rails.application.routes.draw do
  devise_for :users
  post '/users/sign_up', to: 'devise/registrations#create'
  root to: "prototypes#index"
  resources :users, only: [:index, :new]

  resources :prototypes, only: [:new, :create, :show, :edit] do
    resources :comments, only: [:create]
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end