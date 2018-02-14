class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @tag.save
    redirect_to tags_path
  end

  def edit
    @content = "Edit Tag"
  end

  def new
    @content = "New Tag"
    @tag = Tag.new
  end

  def update
    @tag = Tag.find(params[:id])
    @tag = Tag.update_attributes(tag_params)
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

  def show
    @content="Tags for Products"
    @tags = Tag.all
    @products = Product.all
    @tag = Tag.find(params[:id])
    @tagEach = @tag.products
  end

  def index
    @content="Tags"
    @content = "Tags"
    @tags = Tag.all
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
