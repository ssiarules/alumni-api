class AlumnisController < ApplicationController
  before_action :set_alumni, only: [:show, :update, :destroy]

  # GET /alumnis
  def index
    @alumnis = Alumni.all

    render json: @alumnis
  end

  # GET /alumnis/1
  def show
    render json: @alumni
  end

  # POST /alumnis
  def create
    @alumni = Alumni.new(alumni_params)

    if @alumni.save
      render json: @alumni, status: :created, location: @alumni
    else
      render json: @alumni.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alumnis/1
  def update
    if @alumni.update(alumni_params)
      render json: @alumni
    else
      render json: @alumni.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alumnis/1
  def destroy
    @alumni.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni
      @alumni = Alumni.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alumni_params
      params.require(:alumni).permit(:description, :completed)
    end
end
