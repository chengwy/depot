class AddStockVolumesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock_volumes, :integer, default: 1
  end
end
