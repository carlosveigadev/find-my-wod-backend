Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :wods, only: %i[index show]
      resources :favourites, only: %i[index create destroy]
    end
  end

  resources :authentication, only: [:create]
  resources :users
end
