class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def new
    @content = "New Category"
    @category = Category.new
  end

  def edit
    @content = "Edit Category"
    @category = Category.find(params[:id])
    redirect_to categories_path
  end

  def update
    @category = Category.find(params[:id])
    @category = Category.update_attributes(category_params)
    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def index
    @content = "Categories"
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @title = @category.name
    @products = @category.products
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
