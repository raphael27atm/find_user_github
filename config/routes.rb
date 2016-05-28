Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  root :to => "users#index"

  # API routes
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end

end
