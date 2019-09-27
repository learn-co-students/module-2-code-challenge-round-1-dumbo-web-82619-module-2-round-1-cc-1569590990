class Episode < ApplicationRecord
  has_many :shows
  has_many :guests, through: :shows

  validates :name, presence: true
end
