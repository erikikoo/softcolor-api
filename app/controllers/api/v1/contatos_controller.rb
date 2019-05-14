module Api::V1
class ContatosController < ApplicationController
  before_action :set_contato, only: [:show, :update, :destroy, :status]
  before_action :get_all_contato, only: [:index, :status]
  # GET /contatos
  def index
    render json: @contatos
  end

  # GET /contatos/1
  def show
    render json: @contato
  end

  # POST /contatos
  def create
    @contato = Contato.new(contato_params)

    if @contato.save
      render json: @contato, status: :created, location: @contato
    else
      render json: @contato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contatos/1
  def update
    if @contato.update(contato_params)
      render json: @contato
    else
      render json: @contato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contatos/1
  def destroy
    @contato.destroy
    render json: {message: "Contato excluído!"}
  end

  def status
    if @contato.principal
      @contato.update(principal: false)
    else
      @contato.update(principal: true)
    end

  end

  private
    def get_all_contato
      @contatos = Contato.select('bairro', 'cep', 'cidade', 'endereco', 'estado', 'numero').last
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_contato
      @contato = Contato.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contato_params
      params.require(:contato).permit(:endereco, :numero, :bairro, :cidade, :estado, :cep)
    end
end
end
