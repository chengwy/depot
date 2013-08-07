class Subclass < ActiveRecord::Base
  attr_accessible :content, :type_id  
  belongs_to :type
end
