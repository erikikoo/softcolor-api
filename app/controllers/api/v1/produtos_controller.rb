module Api::V1
class ProdutosController < ApplicationController  
  
  before_action :set_produto, only: [:update, :destroy, :show]
  skip_before_action :authenticate_request, only: [:index, :all_produtos, :show, :search]

  # GET /produtos
  def index    
    @produtos = Produto.select('title', 'description', 'id').all
    render json: @produtos
  end

  def all_produtos
    @produtos = Produto.all
    render json: @produtos
  end

  # GET /produtos/1
  def show    
    render json: @produto
  end

  # POST /produtos
  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      # getAllProductsWithImage()
      render json: @produtos, status: :created
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

  def search
    @produto = Produto.find_by('title LIKE ?', "%#{params[:title]}%")
    render json: @produto
  end

  private

    def getAllProductsWithImage
      @produtos = []
      produtos = Produto.all
      produtos.each do |produto|      
        @produtos << {id: produto.id, title: produto.title, description: produto.description,image: ActionController::Base.helpers.image_url(produto.title.gsub(/ç/, 'c').parameterize, host: "http://192.168.0.13:8080/api/v1")}
      end
      @produtos
    end
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
