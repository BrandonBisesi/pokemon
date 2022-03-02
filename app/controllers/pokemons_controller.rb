class PokemonsController < ApplicationController
  def index
    if params[:search].present?
      @pokemon_search = Pokemon.find_by(name: params[:search].capitalize)
    else
      @pokemons = Pokemon.page(params[:page])
    end
  end

  def show
    @pokemon = Pokemon.includes(:move).find(params[:id])
    @evolution = Pokemon.where(evolution_chain: @pokemon.evolution_chain)
  end
end
