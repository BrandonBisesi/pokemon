class AbilitiesController < ApplicationController
  def index
    @abilities = Ability.page(params[:page])
  end

  def show
    @ability = Ability.includes(:pokemon).find(params[:id])
  end
end
