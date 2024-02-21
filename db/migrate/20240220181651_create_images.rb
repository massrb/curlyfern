class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :name
      t.text :image_data
      t.integer :owner_id

      t.timestamps
    end
  end
end
