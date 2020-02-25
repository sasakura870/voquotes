class Quote < ApplicationRecord
  belongs_to :celebrity

  has_many :category_maps, dependent: :destroy
end
