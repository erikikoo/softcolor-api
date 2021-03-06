module Api::V1
class TelefonesController < ApplicationController
  before_action :set_telefone, only: [:show, :update, :destroy, :status]
  before_action :get_all_telefones, only: [:index, :destroy]
  after_action :get_all_telefones, only: [:create]
  skip_before_action :authenticate_request, only: [:index, :principal]
  # GET /telefones
  def index
    render json: @telefones
  end

  def principal
    @telefone = Telefone.select('numero').find_by(principal: true)
    render json: @telefone
  end

  # GET /telefones/1
  def show
    render json: @telefone
  end

  # POST /telefones
  def create
    @telefone = Telefone.new(telefone_params)

    if @telefone.save
      render json: @telefones, status: :created
    else
      render json: @telefone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /telefones/1
  def update
    if @telefone.update(telefone_params)
      render json: @telefone
    else
      render json: @telefone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /telefones/1
  def destroy
    @telefone.destroy    
    render json: @telefones
  end

  def status
    if @telefone.principal
      @telefone.update(principal: false)
    else
      @telefone.update(principal: true)
    end
    get_all_telefones()
    render json: @telefones
  end

  private
    def get_all_telefones
      @telefones = Telefone.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_telefone
      @telefone = Telefone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def telefone_params
      params.require(:telefone).permit(:numero, :principal)
    end
end
end
