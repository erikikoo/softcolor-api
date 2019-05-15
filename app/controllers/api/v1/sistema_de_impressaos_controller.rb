module Api::V1
class SistemaDeImpressaosController < ApplicationController
  before_action :set_sistema_de_impressao, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request, only: [:index]

  # GET /sistema_de_impressaos
  def index
    @sistema_de_impressaos = SistemaDeImpressao.last

    render json: @sistema_de_impressaos
  end

  # GET /sistema_de_impressaos/1
  def show
    render json: @sistema_de_impressao
  end

  # POST /sistema_de_impressaos
  def create
    @sistema_de_impressao = SistemaDeImpressao.new(sistema_de_impressao_params)

    if @sistema_de_impressao.save
      render json: @sistema_de_impressao, status: :created, location: @sistema_de_impressao
    else
      render json: @sistema_de_impressao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sistema_de_impressaos/1
  def update
    if @sistema_de_impressao.update(sistema_de_impressao_params)
      render json: @sistema_de_impressao
    else
      render json: @sistema_de_impressao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sistema_de_impressaos/1
  def destroy
    @sistema_de_impressao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sistema_de_impressao
      @sistema_de_impressao = SistemaDeImpressao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sistema_de_impressao_params
      params.require(:sistema_de_impressao).permit(:painel_principal_title, :painel_principal_description, :painel_one_title, :painel_one_description, :painel_two_title, :painel_two_description, :painel_tree_title, :painel_tree_description)
    end
end
end
