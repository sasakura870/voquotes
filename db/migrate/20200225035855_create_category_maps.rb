class CreateCategoryMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :category_maps do |t|
      t.references :quotes, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
