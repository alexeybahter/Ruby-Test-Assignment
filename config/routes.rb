Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'

  devise_for :users,
             :controllers => { :registrations => 'users/registrations', :session => 'users/sessions' },
             skip: [:registrations]
  devise_scope :user do
    get 'users/sign_up', to: 'users/registrations#new', as: :new_user_registration
    post 'users/sign_up', to: 'users/registrations#create', as: :sign_up
  end
  resources :users, :only => [:show] do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

  resources :articles do
    resources :comments, only: [:new, :create, :destroy]  do
      get :reply
    end
  end

  root to: "articles#index"

end
