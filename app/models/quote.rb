class Quote < ApplicationRecord
  belongs_to :celebrity

  has_many :category_maps, dependent: :destroy

  validates :content, presence: true
  validates :value, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
