class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  attr_accessible :cart_id, :product_id
  attr_accessible :product
  attr_accessible :quantity
  
  def total_price
    product.price * quantity
  end

end
