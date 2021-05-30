class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark.list = @list
    @bookmark.movie = @movie

    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @bookmark.delete
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
