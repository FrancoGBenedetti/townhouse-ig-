Rails.application.routes.draw do
  resources :photos
  resources :projects
  get 'pages/index'

  get 'pages/about'

  get 'pages/projects'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
