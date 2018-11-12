class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.string :url
      t.references :product, foreign_key: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
