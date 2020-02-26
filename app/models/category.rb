class Category < ApplicationRecord
  has_many :category_maps, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 140 },
                   uniqueness: true
end
