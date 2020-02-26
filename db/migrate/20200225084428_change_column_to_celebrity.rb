class ChangeColumnToCelebrity < ActiveRecord::Migration[6.0]
  def up
    change_column :celebrities, :name, :string, null: false, limit: 140
  end

  def down
    change_column :celebrities, :name, :string, null: true
  end
end
