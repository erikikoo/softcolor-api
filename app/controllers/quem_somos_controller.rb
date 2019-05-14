class QuemSomosController < ApplicationController
  before_action :set_quem_somo, only: [:show, :update, :destroy]

  # GET /quem_somos
  def index
    @quem_somos = QuemSomo.last

    render json: @quem_somos
  end

  # GET /quem_somos/1
  def show
    render json: @quem_somo
  end

  # POST /quem_somos
  def create
    @quem_somo = QuemSomo.new(quem_somo_params)

    if @quem_somo.save
      render json: @quem_somo, status: :created, location: @quem_somo
    else
      render json: @quem_somo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quem_somos/1
  def update
    if @quem_somo.update(quem_somo_params)
      render json: @quem_somo
    else
      render json: @quem_somo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quem_somos/1
  def destroy
    @quem_somo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quem_somo
      @quem_somo = QuemSomo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quem_somo_params
      params.require(:quem_somo).permit(:painel_title, :painel_description)
    end
end
