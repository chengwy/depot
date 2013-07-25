class LineItem < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  attr_accessible :cart_id, :product_id
  attr_accessible :product
  attr_accessible :quantity
=======
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  attr_accessible :cart_id, :product_id
  attr_accessible :product
  attr_accessible :quantity
  
>>>>>>> c6290dc12a73ecc7a81fd35dfb55a42b829b4c10
  def total_price
    product.price * quantity
  end

end
