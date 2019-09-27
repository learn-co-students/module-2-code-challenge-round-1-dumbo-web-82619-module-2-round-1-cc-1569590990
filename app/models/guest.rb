class Guest < ApplicationRecord
  has_many :shows
  has_many :episodes, through: :shows

  validates :name, presence: true
end
