class TypesController < ApplicationController
  before_action :set_type, only: %i[ show edit update destroy ]

  # GET /types or /types.json
  def index
    @types = Type.all
  end

  # GET /types/1 or /types/1.json
  def show
  end

end
