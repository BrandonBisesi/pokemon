class GenerationsController < ApplicationController
  def index
    @generations = Generation.all
  end

  def show
    @generation = Generation.includes(:pokemon).includes(:move).find(params[:id])
  end
end
