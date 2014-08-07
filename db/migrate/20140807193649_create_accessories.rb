class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :platform
      t.decimal :price
      t.integer :quantity
      t.boolean :instore
      t.boolean :online

      t.timestamps
    end
  end
end
