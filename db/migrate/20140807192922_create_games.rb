class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.string :edition
      t.decimal :price
      t.integer :quantity
      t.string :release_date
      t.boolean :instore
      t.boolean :online
      t.boolean :digital
      t.boolean :preorder

      t.timestamps
    end
  end
end
