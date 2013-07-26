class StoreController < ApplicationController
  def index
	@products = Product.order(:title)#books are ordered by title
	@cart = current_cart
  end
end
