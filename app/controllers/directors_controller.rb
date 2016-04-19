class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end
 
  def show
    @director = Director.find(params[:id])
  end
 
  def new
    @director = Director.new
  end
 
  def edit
    @director = Director.find(params[:id])
  end
 
  def create
    @director = Director.new(director_params)
 
    if @director.save
      redirect_to @director
    else
      render 'new'
    end
  end
 
  def update
    @director = Director.find(params[:id])
 
    if @director.update(director_params)
      redirect_to @director
    else
      render 'edit'
    end
  end
 
  def destroy
    @director = Director.find(params[:id])
    @director.destroy
 
    redirect_to directors_path
  end
 
  def edit_credits 
    @director = Director.find(params[:id])
    @movies = Movie.all
  end

  def add_movie 
      director_id = params[:id]
      movie_id = params[:director_to_movie][:movie_id]
      @director = Director.find(params[:id])
      @director.movies = @director.movies + Movie.find([movie_id])
      redirect_to :back
    end
 
    def remove_movie 
      #params[:id] has the student_id for which the form was called.
      director_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:director_to_movie][:movie_id]
      @director = Director.find(params[:id])
      @director.movies = @director.movies - Movie.find([movie_id])
      redirect_to :back
    end

  private
    def director_params
      params.require(:director).permit(:name)
    end
end