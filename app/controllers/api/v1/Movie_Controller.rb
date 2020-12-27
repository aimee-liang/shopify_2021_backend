class Api::V1::MovieController < ApplicationController

    def index
        movies = Movie.all
        render json: movies
    end

    def show
        movie = Movie.find_by(id: params[:id])
        render json: movie
    end

private
    def user_params
        params.require(:user).permit(:id, :name, :year, :genre)
    end
end