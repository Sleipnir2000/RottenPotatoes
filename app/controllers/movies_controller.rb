class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.create movie_params
        if @movie
            redirect_to movies_path
        else
            render :new, status: :unprocessable_entity
        end
    end
        
    private 
    def movie_params 
        params.require(:movie).permit(:title, :rating, :released_date)
    end
end
