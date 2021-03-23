Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]  
      
      resources :registrations, only: [:create]
      
      resources :wods, only: %i[index show]

      delete :logout, to: "sessions#logout"
      
      get :logged_in, to: "sessions#logged_in"
      root to: "wods#index"


    end
  end
end
