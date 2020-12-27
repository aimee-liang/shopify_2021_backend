class Api::V1::UserController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        @user = User.create(user_params)
        render json: { user: UserSerializer.new(@user)}
    end

    def edit
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        render json: @user
    end
    

private
    def user_params
        params.require(:user).permit(:id, :name)
    end
end