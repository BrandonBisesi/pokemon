class MovesController < ApplicationController
  # GET /moves or /moves.json
  def index
    @moves = Move.all
  end

  # GET /moves/1 or /moves/1.json
  def show
    @move = Move.includes(:generation).includes(:pokemon).includes(:type).find(params[:id])
  end
end
