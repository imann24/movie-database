class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end
 
  def show
    @studio = Studio.find(params[:id])
  end
 
  def new
    @studio = Studio.new
  end
 
  def edit
    @studio = Studio.find(params[:id])
  end
 
  def create
    @studio = Studio.new(studio_params)
 
    if @studio.save
      redirect_to @studio
    else
      render 'new'
    end
  end
 
  def update
    @studio = Studio.find(params[:id])
 
    if @studio.update(studio_params)
      redirect_to @studio
    else
      render 'edit'
    end
  end
 
  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
 
    redirect_to studios_path
  end

   def edit_credits 
    @studio = Studio.find(params[:id])
    @movies = Movie.all
  end

  def add_movie 
    #params[:id] has the student_id for which the form was called.
      studio_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:studio_to_movie][:movie_id]
      @studio = Studio.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @studio.movies = @studio.movies + Movie.find([movie_id])
      redirect_to :back
    end
 
    def remove_movie 
      #params[:id] has the student_id for which the form was called.
      studio_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:studio_to_movie][:movie_id]
      @studio = Studio.find(params[:id])
      @studio.movies = @studio.movies - Movie.find([movie_id])
      redirect_to :back
    end
 
  private
    def studio_params
      params.require(:studio).permit(:name)
    end
end