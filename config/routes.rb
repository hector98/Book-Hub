Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  resources :posts do
    resources :comments
    resources :reactions
  end


  get "up" => "rails/health#show", as: :rails_health_check

end
