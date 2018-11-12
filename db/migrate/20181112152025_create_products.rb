class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
      t.integer :views
      t.integer :sales
      t.integer :warranty
      t.boolean :status
      t.references :product_type, foreign_key: true
      t.references :provider, foreign_key: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
