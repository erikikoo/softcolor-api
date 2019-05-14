class NossaHistoriaController < ApplicationController
  before_action :set_nossa_historium, only: [:show, :update, :destroy]

  # GET /nossa_historia
  def index
    @nossa_historia = NossaHistorium.last

    render json: @nossa_historia
  end

  # GET /nossa_historia/1
  def show
    render json: @nossa_historium
  end

  # POST /nossa_historia
  def create
    @nossa_historium = NossaHistorium.new(nossa_historium_params)

    if @nossa_historium.save
      render json: @nossa_historium, status: :created, location: @nossa_historium
    else
      render json: @nossa_historium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nossa_historia/1
  def update
    if @nossa_historium.update(nossa_historium_params)
      render json: @nossa_historium
    else
      render json: @nossa_historium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nossa_historia/1
  def destroy
    @nossa_historium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nossa_historium
      @nossa_historium = NossaHistorium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nossa_historium_params
      params.require(:nossa_historium).permit(:painel_title, :painel_description)
    end
end
