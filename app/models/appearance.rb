class Appearance < ApplicationRecord
    validates :episode_rating, inclusion: { in: (1..5), message: "must be between 1-5" }
    validates :guest_id, uniqueness: { scope: :episode_id, message: "has already made an appearance in this episode" }

end
