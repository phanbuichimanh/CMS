class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.text :content
      t.references :product, foreign_key: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
