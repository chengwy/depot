class Product < ActiveRecord::Base
  has_many :line_items
  has_many :comments  
  has_many :orders, :through => :line_items

  before_destroy :ensure_not_referenced_by_any_line_item
  
  attr_accessible :description, :image_url, :price, :title, :stock_volumes, :tags
  BOOK_TYPES = [ "IT", "math" ,"subclass11","subclass12","subclass13","subclass14",
                "subclass21","subclass22","subclass23","subclass24","subclass25",
                "subclass31","subclass32","subclass33","subclass34","subclass35",
                "subclass41","subclass42","subclass43","subclass44","subclass45"]
  validates :title, :description, :image_url, :stock_volumes, :tags, presence: true
  validates :tags, :inclusion => BOOK_TYPES
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)$}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  private
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
