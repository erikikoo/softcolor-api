module Api::V1
class BannerPrincipalsController < ApplicationController
  before_action :set_banner_principal, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request, only: [:index]
  
  # GET /banner_principals
  def index    
    
    getBanners()
    
    render json: @banners
  end

  # GET /banner_principals/1
  def show
    render json: @banner_principal
  end

  # POST /banner_principals
  def create    

    @banner = Cloudinary::Uploader.upload(params[:banner][:image])
    
    if @banner
    
      BannerPrincipal.create(image_url_cloudinary: @banner['secure_url'])       
      
      render json: @banner, status: :created
    
    else
      render json: @banner_principal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /banner_principals/1
  def update
    if @banner_principal.update(banner_principal_params)
      render json: @banner_principal
    else
      render json: @banner_principal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /banner_principals/1
  def destroy   

    @banner_principal.destroy
  end

  private

    def getBanners
      @banners = []
      banner_principals = BannerPrincipal.all
    
      banner_principals.each do |banner|      
        @banners << {id: banner.id, image: banner.image_url_cloudinary}# if banner.image.attached?
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_banner_principal
      @banner_principal = BannerPrincipal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banner_principal_params
      params.fetch(:banner_principal, {})
      # params.require(:banner).permit(:image)      
    end

    def getImageName image      
      return image.split('/').last
    end
end
end