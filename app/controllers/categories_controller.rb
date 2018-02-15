class CategoriesController < ApplicationController
  def create
    @products = Product.all
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def new
    @products = Product.all
    @content = "New Category"
    @category = Category.new
  end

  def edit
    @products = Product.all
    @content = "Edit Category"
    @category = Category.find(params[:id])
    redirect_to categories_path
  end

  def update
    @products = Product.all
    @category = Category.find(params[:id])
    @category = Category.update_attributes(category_params)
    redirect_to categories_path
  end

  def destroy
    @products = Product.all
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def index
    @products = Product.all
    @content = "Categories"
    @categories = Category.all
  end

  def show
    @content = "Products to Categories"
    @categories = Category.all
    @category = Category.find(params[:id])
    @title = @category.name
    @productCategory = @category.products
    @products = Product.all
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
