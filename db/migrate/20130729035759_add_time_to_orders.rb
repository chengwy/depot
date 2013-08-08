class AddTimeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :time, :Time
  end
end
