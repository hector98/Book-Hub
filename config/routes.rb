Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  resources :profiles

  resources :posts do
    resources :comments
    resources :reactions
  end

  get "about" => "abouts#show", as: :about


  get "up" => "rails/health#show", as: :rails_health_check

end
