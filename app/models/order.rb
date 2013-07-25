class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type
  attr_accessible :cart, :product
<<<<<<< HEAD
  has_many :line_items, :dependent => :destroy
  PAYMENT_TYPES = [ "Check", "Credit card" , "Purchase order" ]
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
=======
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order"]
  
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  
  has_many :line_items, dependent: :destroy
>>>>>>> c6290dc12a73ecc7a81fd35dfb55a42b829b4c10
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
