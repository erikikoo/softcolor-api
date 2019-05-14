module Api::V1
class SustentabilidadesController < ApplicationController
  before_action :set_sustentabilidade, only: [:show, :update, :destroy]

  # GET /sustentabilidades
  def index
    @sustentabilidades = Sustentabilidade.last

    render json: @sustentabilidades
  end

  # GET /sustentabilidades/1
  def show
    render json: @sustentabilidade
  end

  # POST /sustentabilidades
  def create
    @sustentabilidade = Sustentabilidade.new(sustentabilidade_params)

    if @sustentabilidade.save
      render json: @sustentabilidade, status: :created, location: @sustentabilidade
    else
      render json: @sustentabilidade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sustentabilidades/1
  def update
    if @sustentabilidade.update(sustentabilidade_params)
      render json: @sustentabilidade
    else
      render json: @sustentabilidade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sustentabilidades/1
  def destroy
    @sustentabilidade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sustentabilidade
      @sustentabilidade = Sustentabilidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sustentabilidade_params
      params.require(:sustentabilidade).permit(:painel_title, :painel_description)
    end
end
end
