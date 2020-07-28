Rails.application.routes.draw do
  resources :posts
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, only: [:create, :update] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  resources :posts do
    collection do
      get '/user_posts', to: 'posts#user_posts', as: :user
    end
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up" if Clearance.configuration.allow_sign_up?

  root to: 'pages#index'
  get 'pages/all_users'
  get 'pages/redirect_test'
end
