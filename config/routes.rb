Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]  
      
      delete :logout, to: "sessions#logout"
      
      get :logged_in, to: "sessions#logged_in"
      
      resources :wods, only: %i[index show] do
        post 'favourite', to: 'wods#favourite'
        post 'unfavourite', to: 'wods#unfavourite'
      end

      
      root to: "wods#index"
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

end
