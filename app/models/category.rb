class Category < ApplicationRecord
  has_many :category_maps, dependent: :destroy
end
