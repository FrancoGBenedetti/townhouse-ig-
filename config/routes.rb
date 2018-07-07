Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: { registrations: "registrations", passwords: "passwords"}

  resource :user, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end
  resources :projects do
    resources :photos, only: [:create, :destroy]
  end

  get 'admin',to: 'admin#index'

  get 'pages/index'

  get 'pages/about'

  get 'pages/projects'

  get 'pages/numbers'


  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
