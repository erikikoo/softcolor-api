module Api::V1
class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :update, :destroy, :status]
  before_action :get_all_email, only: [:index, :status]
  skip_before_action :authenticate_request, only: [:index]
  # GET /emails
  def index
    render json: @emails
  end

  def principal
    @email = Email.select('email').find_by(principal: true)
    render json: @email
  end

  # GET /emails/1
  def show
    render json: @email
  end

  # POST /emails
  def create
    @email = Email.new(email_params)

    if @email.save
      render json: @email, status: :created, location: @email
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emails/1
  def update
    if @email.update(email_params)
      render json: @email
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emails/1
  def destroy
    @email.destroy
    @emails = Email.all
    render json: @emails, message: "E-mail excluido!"
  end

  def status
    
    if @email.principal
      @email.update(principal: false)
    else
      @email.update(principal: true)
    end
    render json: @emails
  end

  def get_all_email
    @emails = Email.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_params
      
      params.require(:email).permit(:email, :principal)
    end
end
end
