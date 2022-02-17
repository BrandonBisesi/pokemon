class AbilitiesController < ApplicationController
  before_action :set_ability, only: %i[ show edit update destroy ]

  # GET /abilities or /abilities.json
  def index
    @abilities = Ability.all
  end

  # GET /abilities/1 or /abilities/1.json
  def show
  end

end
