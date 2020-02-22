class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :content
      t.integer :value
      t.references :celebrity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
