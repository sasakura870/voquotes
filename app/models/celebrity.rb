class Celebrity < ApplicationRecord
  has_many :quotes, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 140 },
                   uniqueness: true
  validates :uri, format: { with: %r{\Ahttps?://([\w\-]+\.)+[\w\-]+(/[\w\-./?%&=()]*)?\z} },
                  allow_nil: true
end
