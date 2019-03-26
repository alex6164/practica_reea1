class CategoriesController < ApplicationController
 def index
    @category = Category.all
    end

  def new
    @category = Category.new
  end

  
    
  def create
    @category = Category.new(categ_params)
    if @category.save
      redirect_to categories_url(@category)
    else
      render :new
    end
  end

  def show
    find_category
  end

  def edit
    find_category
  end

  def update
    find_category

    if @category.update(categ_params)
      redirect_to categories_url(@category)
    else
      render :edit
    end
  end

  def destroy
    find_category

    if @category.destroy
      flash[:notice] = "Category deleted"
      redirect_to categories_url
    else
      flash[:notice] = "Category could not be deleted"
      redirect_to categories_url
    end
   end

  private

    def find_category
      @category = Category.find(params[:id])
    end

  

    def categ_params
      params.require(:category).permit(:title)
    end
end
