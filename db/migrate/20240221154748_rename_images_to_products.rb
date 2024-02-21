class RenameImagesToProducts < ActiveRecord::Migration[7.1]
  def change
    rename_table :images, :products
    add_column :products, :price, :decimal, :precision => 8, :scale => 2
    add_column :products, :inventory, :integer
    add_column :products, :description, :text
    add_column :products, :category, :integer
    remove_column :products, :owner_id 
  end
end
