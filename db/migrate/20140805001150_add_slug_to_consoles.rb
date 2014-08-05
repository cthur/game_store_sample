class AddSlugToConsoles < ActiveRecord::Migration
  def change
    add_column :consoles, :slug, :string
  end
end
