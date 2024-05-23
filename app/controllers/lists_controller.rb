class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
    # @list = @list.build
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list.id)
    # @review = @list.build(list_params)
    # @review.list_id = @list.id
    # if @list.save
    #   redirect_to list_path(@list.id), notice: 'Review was successfully created'
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

private

  def list_params
    params.require(:list).permit(:name, :details)
  end
end
