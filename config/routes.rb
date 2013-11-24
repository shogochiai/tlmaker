Tlmaker::Application.routes.draw do
  get "home/index"

  root to: 'home#index'

  resources :user_sessions

  namespace :user do
    resources :timelines, except: [:index, :show]
  end

  resources :users, only: [:new, :create, :edit, :update, :destroy] do
    get :timelines, on: :member
    resources :timelines, only: :index
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :timelines, only: :show
end
