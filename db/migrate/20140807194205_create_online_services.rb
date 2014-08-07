class CreateOnlineServices < ActiveRecord::Migration
  def change
    create_table :online_services do |t|
      t.string :name
      t.string :platform
      t.decimal :price
      t.integer :quantity
      t.boolean :emailed
      t.boolean :instore

      t.timestamps
    end
  end
end
