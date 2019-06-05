class PresentsController < ApplicationController
  before_action :set_present, only: [:show, :update, :destroy]

  # GET /presents
  def index
    @presents = Present.all

    render json: @presents
  end

  # GET /presents/1
  def show
    render json: @present
  end

  # POST /presents
  def create
    @present = Present.new(present_params)

    if @present.save
      render json: @present, status: :created, location: @present
    else
      render json: @present.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /presents/1
  def update
    if @present.update(present_params)
      render json: @present
    else
      render json: @present.errors, status: :unprocessable_entity
    end
  end

  # DELETE /presents/1
  def destroy
    @present.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_present
      @present = Present.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def present_params
      params.require(:present).permit(:title, :img, :description, :comment, :date)
    end
end
