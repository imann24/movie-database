class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
      @genre = Genre.new
  end

  def create 
    @genre = Article.new(article_params)
 
    if @genre.save
      redirect_to @genre
    else
      render 'new'
    end
  end

  def show
      @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = genre.find(params[:id])
 
    if @genre.update(article_params)
      redirect_to @genre
    else
      render 'edit'
    end
  end

  def delete
    @genre = Genre.find(params[:id])
    @genre.destroy
 
    redirect_to genres_path
  end

  private
    def genre_params
      params.require(:genre).permit(:name)
    end

end