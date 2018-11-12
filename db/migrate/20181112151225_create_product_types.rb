class CreateProductTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_types do |t|
      t.string :name
      t.boolean :is_active
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
