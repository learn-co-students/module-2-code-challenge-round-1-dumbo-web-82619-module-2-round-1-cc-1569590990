class Show < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :guest_id, presence: true
  validates :episode_id, presence: true
end
