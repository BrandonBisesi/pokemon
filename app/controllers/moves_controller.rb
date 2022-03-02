class MovesController < ApplicationController
  def index
    if params[:search].present?
      @move_search = Move.find_by(name: params[:search].capitalize)
    else
      @moves = Move.page(params[:page])
    end
  end

  def show
    @move = Move.includes(:generation).includes(:pokemon).includes(:type).find(params[:id])
  end
end
