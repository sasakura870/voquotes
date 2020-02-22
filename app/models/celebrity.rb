class Celebrity < ApplicationRecord
  has_many :quotes, dependent: :destroy
end
