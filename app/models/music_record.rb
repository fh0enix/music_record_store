class MusicRecord < ApplicationRecord
  has_one_attached :photo

  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
