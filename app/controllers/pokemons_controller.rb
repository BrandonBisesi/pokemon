class PokemonsController < ApplicationController
  # GET /pokemons or /pokemons.json
  def index
    @pokemons = Pokemon.page(params[:page])
  end

  # GET /pokemons/1 or /pokemons/1.json
  def show
    @pokemon = Pokemon.includes(:move).find(params[:id])
    @evolution = Pokemon.where(evolution_chain: @pokemon.evolution_chain)
  end

  # def search
  #   @pokemon_search = Pokemon.includes(:move).find_by(name: params[:search])
  # end
end
