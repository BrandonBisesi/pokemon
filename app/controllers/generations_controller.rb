class GenerationsController < ApplicationController
  before_action :set_generation, only: %i[ show edit update destroy ]

  # GET /generations or /generations.json
  def index
    @generations = Generation.all
  end

  # GET /generations/1 or /generations/1.json
  def show
  end

end
