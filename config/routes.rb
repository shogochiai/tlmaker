Tlmaker::Application.routes.draw do

  root to: 'timelines#index'
  resources :user_sessions

  resources :users, only: [:new, :edit, :create, :destroy] do
    get :timelines, on: :member
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :timelines
end
