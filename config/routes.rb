Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: { registrations: "registrations"}

  resources :projects do
    resources :photos, only: [:create, :destroy]
  end

  get 'admin',to: 'admin#index'

  get 'pages/index'

  get 'pages/about'

  get 'pages/projects'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
