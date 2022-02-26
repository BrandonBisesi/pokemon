class PokemonsController < ApplicationController
  # GET /pokemons or /pokemons.json
  def index
    @pokemons = Pokemon.all
  end

  # GET /pokemons/1 or /pokemons/1.json
  def show
    @pokemon = Pokemon.includes(:move).find(params[:id])
    @evolution = Pokemon.where(evolution_chain: @pokemon.evolution_chain)
  end
end
