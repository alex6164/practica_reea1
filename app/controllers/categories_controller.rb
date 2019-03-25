class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end


  def create
    @category = Category.new(categ_params)
    if @category.save
      redirect_to categories_new_url(@category)
    else
      render :new
    end
  end

  private

  def categ_params
    params.require(:category).permit(:title)
  end


end
