class MovesController < ApplicationController
  before_action :set_move, only: %i[ show edit update destroy ]

  # GET /moves or /moves.json
  def index
    @moves = Move.all
  end

  # GET /moves/1 or /moves/1.json
  def show
  end

end
