class HomeController < ApplicationController
  def index
  	@page_title = "Home"
  	@content = "Welcome a board!"
  	@categories = Category.all
  	@products = Product.all
  	@tags = Tag.all
  end

  def contact
    @products = Product.all
  	@page_title = "Contact"
  	render 'contact'
  end
end
