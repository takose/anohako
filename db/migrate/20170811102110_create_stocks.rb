class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :product_id
      t.integer :price
      t.integer :rest

      t.timestamps
    end
  end
end
