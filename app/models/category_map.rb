class CategoryMap < ApplicationRecord
  belongs_to :quote
  belongs_to :category

  validates :category_id, uniqueness: { scope: :quote_id }
end
