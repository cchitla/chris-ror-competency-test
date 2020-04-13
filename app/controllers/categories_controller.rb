class CategoriesController < ApplicationController
  access all: [:index]

  def index
    @categories = Category.all
  end

end
