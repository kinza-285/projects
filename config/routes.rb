Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    resources :comments
  end
  resources :project_events, only: :index
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
