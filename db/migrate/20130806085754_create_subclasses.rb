class CreateSubclasses < ActiveRecord::Migration
  def change
    create_table :subclasses do |t|
      t.integer :type_id
      t.string :content

      t.timestamps
    end
  end
end
