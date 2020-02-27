class RenameReferencesColumnToCategoryMap < ActiveRecord::Migration[6.0]
  def change
    rename_column :category_maps, :quotes_id, :quote_id
    rename_column :category_maps, :categories_id, :category_id
  end
end
