class MaterialColetadosController < ApplicationController
  before_action :set_material_coletado, only: [:show, :update, :destroy]

  # GET /material_coletados
  def index
    @material_coletados = MaterialColetado.last

    render json: @material_coletados
  end

  # GET /material_coletados/1
  def show
    render json: @material_coletado
  end

  # POST /material_coletados
  def create
    @material_coletado = MaterialColetado.new(material_coletado_params)

    if @material_coletado.save
      render json: @material_coletado, status: :created, location: @material_coletado
    else
      render json: @material_coletado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /material_coletados/1
  def update
    if @material_coletado.update(material_coletado_params)
      render json: @material_coletado
    else
      render json: @material_coletado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /material_coletados/1
  def destroy
    @material_coletado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_coletado
      @material_coletado = MaterialColetado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def material_coletado_params
      params.require(:material_coletado).permit(:ano, :qnt_plastico, :qnt_aparas, :qnt_fotolitos, :qnt_ferro, :qnt_papelao, :qnt_aluminio)
    end
end
