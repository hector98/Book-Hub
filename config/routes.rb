Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

end
