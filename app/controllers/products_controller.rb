class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def edit
    @content = "Edit Work"
    @product = Product.find(params[:id])
  end

  def new
    @content = "New Work"
    @product = Product.new
    @category = Category.all
    @tag = Tag.all
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  def show
    @product = Product.find(params[:id])
    @content = @product.name
    @categories = Category.all
  end

  def index
    @content = "New work"
    @products = Product.all
    @categories = Category.all
    @tags = Tag.all
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :image, :price, :tag_id, :category_id)
  end
end
