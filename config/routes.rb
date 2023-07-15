Rails.application.routes.draw do
  resources :parent_details do
    collection do
      post:import
    end 
  end
  resources :user_details
  root 'user_details#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
