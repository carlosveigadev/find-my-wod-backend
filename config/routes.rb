Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :wods, only: %i[index show] do
        post 'favourite', to: 'wods#favourite'
        post 'unfavourite', to: 'wods#unfavourite'
      end

      get 'favourites', to: 'favourites#index'
      
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
