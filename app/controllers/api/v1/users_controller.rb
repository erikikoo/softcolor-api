module Api::V1
class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  skip_before_action :authenticate_request, only: %i[login register]
  # POST /register
  def register
      @user = User.create(user_params)
      if @user.save
        response = { message: 'User created successfully'}
        render json: response, status: :created 
      else
        render json: @user.errors, status: :bad
      end 
  end

  def login
    authenticate params[:login], params[:password]
  end  


  # # GET /users
  # def index
  #   @users = User.all

  #   render json: @users
  # end

  # # GET /users/1
  # def show
  #   render json: @user
  # end

  # # POST /users
  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     render json: @user, status: :created, location: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /users/1
  # def destroy
  #   @user.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:login, :password)
    end

    def authenticate(email, password)
      command = AuthenticateUser.call(email, password)
  
      if command.success?
        render json: {
          access_token: command.result,
          message: 'Login Successful'
        }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
     end
  end
end
