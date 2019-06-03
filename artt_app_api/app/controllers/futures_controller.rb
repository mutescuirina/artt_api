class FuturesController < ApplicationController
  before_action :set_future, only: [:show, :update, :destroy]

  # GET /futures
  def index
    @futures = Future.all

    render json: @futures
  end

  # GET /futures/1
  def show
    render json: @future
  end

  # POST /futures
  def create
    @future = Future.new(future_params)

    if @future.save
      render json: @future, status: :created, location: @future
    else
      render json: @future.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /futures/1
  def update
    if @future.update(future_params)
      render json: @future
    else
      render json: @future.errors, status: :unprocessable_entity
    end
  end

  # DELETE /futures/1
  def destroy
    @future.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_future
      @future = Future.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def future_params
      params.require(:future).permit(:title, :img, :description, :comment, :date, :attendance)
    end
end
