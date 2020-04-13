class CategoriesController < ApplicationController
  access all: [:index, :show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end


end
