Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'reservations/index'
      get 'reservations/new'
      get 'reservations/create'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'movies/index'
      get 'movies/new'
      get 'movies/create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
