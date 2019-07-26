class ItemsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @item = @list.items.build
  end

  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create(item_params)

    redirect_to list_path(@list)

  end

private
  def item_params
    params.require(:item).permit(:item, :description)
  end
end
