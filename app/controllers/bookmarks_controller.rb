class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save

    redirect_to list_path(params[:list_id])
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:content)
  end
end
