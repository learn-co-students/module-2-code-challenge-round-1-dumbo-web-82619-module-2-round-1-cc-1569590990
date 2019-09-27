class Appearance < ApplicationRecord
  belongs_to :guest_id
  belongs_to :episode_id
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: :max_age }

validates :rating, numericality: { less_than_or_equal_to: 100 }


end
