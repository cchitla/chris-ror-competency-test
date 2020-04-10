class CategoriesController < ApplicationController
  before_action :index

  def index
    @categories = Category.all
  end

end
