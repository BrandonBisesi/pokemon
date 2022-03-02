class MovesController < ApplicationController
  # GET /moves or /moves.json
  def index
    if params[:search].present?
      @move_search = Move.find_by(name: params[:search].capitalize)
    else
      @moves = Move.page(params[:page])
    end
  end

  # GET /moves/1 or /moves/1.json
  def show
    @move = Move.includes(:generation).includes(:pokemon).includes(:type).find(params[:id])
  end
end
