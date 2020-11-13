Rails.application.routes.draw do
  resources :posts
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'pages/index'
  #get 'page/index'
  root 'users#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :new]
    end
  end

  # get '*path', to: 'pages#index', via: :all
end
