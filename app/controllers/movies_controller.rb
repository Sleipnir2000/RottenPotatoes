require "byebug"

class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new movie_params
        if @movie.save
            flash[:notice] = "#{@movie.title} was successfully created."
            redirect_to movies_path
        else
            flash[:warning] = @movie.errors.first.full_message 
            render :new, status: :unprocessable_entity
        end
    end
        
    private 
    def movie_params 
        params.require(:movie).permit(:title, :rating, :released_date)
    end
end
