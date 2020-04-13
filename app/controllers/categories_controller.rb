class CategoriesController < ApplicationController
  access all: [:index, :show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = Article.all.where(category: params[:id])
  end


end
