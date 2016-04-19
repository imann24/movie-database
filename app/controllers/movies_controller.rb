class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
 
  def show
    @movie = Movie.find(params[:id])
  end
 
  def new
    @movie = Movie.new
  end
 
  def edit
    @movie = Movie.find(params[:id])
  end
 
  def create
    #render plain: params[:movie].inspect
    @movie = Movie.new(movie_params)
 
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end
 
  def update
    @movie = Movie.find(params[:id])
 
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end
 
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
 
    redirect_to movies_path
  end
 

 def add_actor
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      actor_id = params[:actor_to_movie][:actor_id]
      @movie = Movie.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @movie.actors = @movie.actors + Actor.find([actor_id])
      redirect_to :back
   end

    def remove_actor
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      actor_id = params[:actor_to_movie][:actor_id]
      @movie = Movie.find(params[:id])
      @movie.actors = @movie.actors - Actor.find([actor_id])
      redirect_to :back
   end

    def add_director
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      director_id = params[:director_to_movie][:director_id]
      @movie = Movie.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @movie.directors = @movie.directors + Director.find([director_id])
      redirect_to :back
   end

   def remove_director
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      director_id = params[:director_to_movie][:director_id]
      @movie = Movie.find(params[:id])
      @movie.directors = @movie.directors - Director.find([director_id])
      redirect_to :back
   end

    def add_screenwriter
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      screenwriter_id = params[:screenwriter_to_movie][:screenwriter_id]
      @movie = Movie.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @movie.screenwriters = @movie.screenwriters + Screenwriter.find([screenwriter_id])
     redirect_to :back
   end

   def remove_screenwriter
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      screenwriter_id = params[:screenwriter_to_movie][:screenwriter_id]
      @movie = Movie.find(params[:id])
      @movie.screenwriters = @movie.screenwriters - Screenwriter.find([screenwriter_id])
     redirect_to :back
   end

    def add_studio
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      studio_id = params[:studio_to_movie][:studio_id]
      @movie = Movie.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @movie.studios = @movie.studios + Studio.find([studio_id])
      redirect_to :back
   end

   def remove_studio
      #params[:id] has the student_id for which the form was called.
      movie_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      studio_id = params[:studio_to_movie][:studio_id]
      @movie = Movie.find(params[:id])
      @movie.studios = @movie.studios - Studio.find([studio_id])
      redirect_to :back
   end

   def edit_credits 
    @movie = Movie.find(params[:id])
    @actors = Actor.all
    @directors = Director.all
    @screenwriters = Screenwriter.all
    @studios = Studio.all
   end

  private
    def movie_params
      params.require(:movie).permit(:title, :rating, :length, :genre, :score, :synopsis, :year)
    end
end