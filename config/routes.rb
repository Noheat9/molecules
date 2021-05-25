Rails.application.routes.draw do
  get 'static_pages/secret'
  devise_for :users
  resources :charges, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
  resources :events do
    resources :participations
    resources :charges, only: [:new, :create]
  end

  resources :users, only: [:index,:show] do
    resources :avatars, only: [:create]
  end

  resources :events, only: [:show] do
    resources :event_pictures, only: [:create]
  end
end


