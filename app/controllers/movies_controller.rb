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
            flash.now[:warning] = @movie.errors.first.full_message
            render :new, status: :unprocessable_entity
        end
    end

    def show 
        @movie = Movie.find(params[:id])
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy 

        flash[:notice] = "#{@movie.title} was successfully deleted."
        redirect_to movies_path
    end
        
    def edit
        @movie = Movie.find(params[:id])
    end

    private
    def movie_params 
        params.require(:movie).permit(:title, :rating, :released_date)
    end
end
