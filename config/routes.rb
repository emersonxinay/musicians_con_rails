Rails.application.routes.draw do
  get 'admin/dashboard'
  resources :comments
  resources :posts
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations',  # Asegúrate de tener esta línea
  #   confirmations: 'users/confirmations',
  #   passwords: 'users/passwords',
  #   unlocks: 'users/unlocks',
  #   omniauth_callbacks: 'users/omniauth_callbacks'
  # }

  resources :musicians, only: [:show, :update, :new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root "posts#index"
end
