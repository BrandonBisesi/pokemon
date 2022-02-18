class GenerationsController < ApplicationController
  # GET /generations or /generations.json
  def index
    @generations = Generation.all
  end

  # GET /generations/1 or /generations/1.json
  def show
    @generation = Generation.includes(:pokemon).includes(:move).find(params[:id])
  end
end
