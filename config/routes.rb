Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :wods, only: %i[index show]
      resources :favourites, only: %i[index create destroy]     
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
