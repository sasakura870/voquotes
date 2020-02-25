class CategoryMap < ApplicationRecord
  belongs_to :quotes
  belongs_to :categories
end
