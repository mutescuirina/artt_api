class PastsController < ApplicationController
  before_action :set_past, only: [:show, :update, :destroy]

  # GET /pasts
  def index
    @pasts = Past.all

    render json: @pasts
  end

  # GET /pasts/1
  def show
    render json: @past
  end

  # POST /pasts
  def create
    @past = Past.new(past_params)

    if @past.save
      render json: @past, status: :created, location: @past
    else
      render json: @past.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pasts/1
  def update
    if @past.update(past_params)
      render json: @past
    else
      render json: @past.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pasts/1
  def destroy
    @past.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past
      @past = Past.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def past_params
      params.require(:past).permit(:title, :img, :description, :comment)
    end
end
