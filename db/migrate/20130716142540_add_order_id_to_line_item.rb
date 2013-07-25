class AddOrderIdToLineItem < ActiveRecord::Migration
  def change
    #remove_column :line_items, :order_id, :integer
    add_column :line_items, :order_id, :integer
  end
end
