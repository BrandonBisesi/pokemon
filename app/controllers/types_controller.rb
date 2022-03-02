class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.includes(:pokemon).includes(:move).find(params[:id])
  end
end
