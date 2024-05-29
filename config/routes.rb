Rails.application.routes.draw do
  resources :restaurants do
    # rotas relacionadas a restaurantes
    resources :reviews, only: %i[new create]
    collection do
      # rotas que não levam o id
      get :top # get '/restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
    end
    member do
      # rotas que levam o id
      get :chef # get '/restaurants/:id/chef', to: 'restaurants#chef', as: 'chef_restaurant'
    end
  end
  resources :reviews, only: %i[destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "restaurants#index"
end
