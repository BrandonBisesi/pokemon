class AbilitiesController < ApplicationController
  # GET /abilities or /abilities.json
  def index
    @abilities = Ability.all
  end

  # GET /abilities/1 or /abilities/1.json
  def show
    @ability = Ability.includes(:pokemon).find(params[:id])
  end

  def search
    @ability_search = Ability.includes(:pokemon).find_by(params[:search])
  end
end
