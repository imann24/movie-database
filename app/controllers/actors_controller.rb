class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
 
  def show
    @actor = Actor.find(params[:id])
  end
 
  def new
    @actor = Actor.new
  end
 
  def edit
    @actor = Actor.find(params[:id])
  end
 
  def create
    @actor = Actor.new(actor_params)
 
    if @actor.save
      redirect_to @actor
    else
      render 'new'
    end
  end
 
  def update
    @actor = Actor.find(params[:id])
 
    if @actor.update(actor_params)
      redirect_to @actor
    else
      render 'edit'
    end
  end
 
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
 
    redirect_to actors_path
  end

  def edit_credits 
    @actor = Actor.find(params[:id])
    @movies = Movie.all
  end

  def add_movie 
    #params[:id] has the student_id for which the form was called.
      actor_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:actor_to_movie][:movie_id]
      @actor = Actor.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @actor.movies = @actor.movies + Movie.find([movie_id])
      redirect_to :back
    end
 
    def remove_movie 
      #params[:id] has the student_id for which the form was called.
      actor_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:actor_to_movie][:movie_id]
      @actor = Actor.find(params[:id])
      @actor.movies = @actor.movies - Movie.find([movie_id])
      redirect_to :back
    end

  private
    def actor_params
      params.require(:actor).permit(:name)
    end
end