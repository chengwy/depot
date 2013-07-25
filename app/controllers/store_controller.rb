class StoreController < ApplicationController
<<<<<<< HEAD
  skip_before_filter :authorize
  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
    end
  end

end
=======
  def index
	@products = Product.order(:title)#books are ordered by title
	@cart = current_cart
  end
end
>>>>>>> c6290dc12a73ecc7a81fd35dfb55a42b829b4c10
