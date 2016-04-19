class ScreenwritersController < ApplicationController
  def index
    @screenwriters = Screenwriter.all
  end
 
  def show
    @screenwriter = Screenwriter.find(params[:id])
  end
 
  def new
    @screenwriter = Screenwriter.new
  end
 
  def edit
    @screenwriter = Screenwriter.find(params[:id])
  end
 
  def create
    @screenwriter = Screenwriter.new(screenwriter_params)
 
    if @screenwriter.save
      redirect_to @screenwriter
    else
      render 'new'
    end
  end
 
  def update
    @screenwriter = Screenwriter.find(params[:id])
 
    if @screenwriter.update(screenwriter_params)
      redirect_to @screenwriter
    else
      render 'edit'
    end
  end
 
  def destroy
    @screenwriter = Screenwriter.find(params[:id])
    @screenwriter.destroy
 
    redirect_to screenwriters_path
  end
 
   def edit_credits 
    @screenwriter = Screenwriter.find(params[:id])
    @movies = Movie.all
  end

  def add_movie 
    #params[:id] has the student_id for which the form was called.
      screenwriter_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:screenwriter_to_movie][:movie_id]
      @screenwriter = Screenwriter.find(params[:id])
      # the course id being fed to the find method is in an array
      # so that find returns an array
      # so that it can be stored into courses (plural)
      # automatically by rails.
      @screenwriter.movies = @screenwriter.movies + Movie.find([movie_id])
      redirect_to :back
    end
 
    def remove_movie 
      #params[:id] has the student_id for which the form was called.
      screenwriter_id = params[:id]
      #params[:registration] has the rest of the data, that came from the form.
      movie_id = params[:screenwriter_to_movie][:movie_id]
      @screenwriter = Screenwriter.find(params[:id])
      @screenwriter.movies = @screenwriter.movies - Movie.find([movie_id])
      redirect_to :back
  end


  private
    def screenwriter_params
      params.require(:screenwriter).permit(:name)
    end
end