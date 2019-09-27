class List < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rate, numericality: { less_than_or_equal_to: 5, greater_than: 1}

end
