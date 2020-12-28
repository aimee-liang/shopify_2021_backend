class Api::V1::LikesController < ApplicationController

    def index
        likes = Likes.all
        render json: likes
    end

    def show
        likes = Movie.find_by(id: params[:id])
        render json: movie
    end

    def edit
    end

    def update
    end

    def delete
    end

private
    def user_params
        params.require(:user).permit(:id, :name, :year, :genre)
    end
end