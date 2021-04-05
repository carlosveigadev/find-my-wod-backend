Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :wods, only: %i[index show]
      resources :favourites, except: [:update]
    end
  end

  resources :authentication, only: [:create]
  resources :users
end
