class Type < ActiveRecord::Base
  attr_accessible :type_name, :content
  has_many :subclasses
end
