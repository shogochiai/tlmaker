Tlmaker::Application.routes.draw do
  root to: 'home#index'

  resources :timelines, only: :show
  resources :users, only: [:new, :create, :edit, :update, :destroy] do
    resources :timelines, except: :show
    resources :categories, except: :show, controller: 'user/categories'
  end

  resources :user_sessions
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#session_logout', :as => :logout
end
