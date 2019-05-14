module Api::V1
class ProdutosController < ApplicationController
  before_action :set_produto, only: [:update, :destroy]

  # GET /produtos
  def index
    @produtos = []
    produtos = Produto.all
    produtos.each do |produto|      
      @produtos << {id: produto.id, title: produto.title, description: produto.description,image: url_for(produto.image)} if produto.image.attached?
    end
    
    render json: @produtos
  end

  def all_produtos
    @produtos = Produto.all
    render json: @produtos
  end

  # GET /produtos/1
  def show
    if params[:id]
      @produto = Produto.find_by(id: params[:id])      
      @produto.image.attached? ? image_path = url_for(@produto.image) : ''
      @produto = {title: @produto.title, description: @produto.description, image_path: image_path}
    else
      @produto = Produto.select('title', 'description').find_by(title: params[:id])
    end
    render json: @produto
  end

  # POST /produtos
  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      render json: @produto, status: :created, location: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /produtos/1
  def update
    if @produto.update(produto_params)
      render json: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produtos/1
  def destroy
    @produto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produto_params
      params.require(:produto).permit(:title, :description, :image)
    end
end
end
