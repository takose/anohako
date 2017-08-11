class CreateShelves < ActiveRecord::Migration[5.1]
  def change
    create_table :shelves do |t|
      t.string :product_id
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
