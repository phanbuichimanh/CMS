class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :website
      t.boolean :is_active

      t.timestamps
    end
  end
end
