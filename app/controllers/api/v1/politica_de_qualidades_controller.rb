module Api::V1
class PoliticaDeQualidadesController < ApplicationController
  before_action :set_politica_de_qualidade, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request, only: [:index]

  # GET /politica_de_qualidades
  def index
    @politica_de_qualidades = PoliticaDeQualidade.last

    render json: @politica_de_qualidades
  end

  # GET /politica_de_qualidades/1
  def show
    render json: @politica_de_qualidade
  end

  # POST /politica_de_qualidades
  def create
    @politica_de_qualidade = PoliticaDeQualidade.new(politica_de_qualidade_params)

    if @politica_de_qualidade.save
      render json: @politica_de_qualidade, status: :created, location: @politica_de_qualidade
    else
      render json: @politica_de_qualidade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /politica_de_qualidades/1
  def update
    if @politica_de_qualidade.update(politica_de_qualidade_params)
      render json: @politica_de_qualidade
    else
      render json: @politica_de_qualidade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /politica_de_qualidades/1
  def destroy
    @politica_de_qualidade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politica_de_qualidade
      @politica_de_qualidade = PoliticaDeQualidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def politica_de_qualidade_params
      params.require(:politica_de_qualidade).permit(:painel_one_title, :painel_one_description, :painel_two_title, :painel_two_description)
    end
end
end
