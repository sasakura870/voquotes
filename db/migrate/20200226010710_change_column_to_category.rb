class ChangeColumnToCategory < ActiveRecord::Migration[6.0]
  def up
    change_column :categories, :name, :string, null: false, limit: 140
  end

  def down
    change_column :categories, :name, :string, null: true
  end
end
