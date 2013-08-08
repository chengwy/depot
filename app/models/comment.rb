class Comment < ActiveRecord::Base
  attr_accessible :product_id, :text
  belongs_to :product  

end
