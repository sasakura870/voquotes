class Category < ApplicationRecord
  has_many :category_maps, dependent: :destroy
  has_many :quotes, through: :category_maps

  validates :name, presence: true,
                   length: { maximum: 140 },
                   uniqueness: true
end
