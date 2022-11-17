class BookmarksController < ApplicationController
  def new
    @list = list.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = bookmark.new(bookmark_params)
    
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

end
