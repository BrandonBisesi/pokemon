Rails.application.routes.draw do
  resources :moves
  resources :types
  resources :abilities
  resources :about, only: :index
  resources :pokemons, only: %i[index show search], path: "pokemon" do
  end
  # get "pokemon", to: "pokemons#index"
  # get "/pokemon/:id", to: "pokemons#show"

  resources :generations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemons#index"
end
