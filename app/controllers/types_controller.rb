class TypesController < ApplicationController
  # GET /types or /types.json
  def index
    @types = Type.all
  end

  # GET /types/1 or /types/1.json
  def show
    @type = Type.includes(:pokemon).includes(:move).find(params[:id])
  end
end
