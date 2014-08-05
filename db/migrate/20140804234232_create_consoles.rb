class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :name
      t.string :abbr
      t.string :company
      t.string :release_date
      t.string :image_path

      t.timestamps
    end
  end
end
