class ChangeColumnToQuote < ActiveRecord::Migration[6.0]
  def up
    change_column :quotes, :content, :string, null: false
    change_column :quotes, :value, :integer, null: false, default: 0
  end

  def down
    change_column :quotes, :content, :string, null: true
    change_column :quotes, :value, :integer, null: true
  end
end
