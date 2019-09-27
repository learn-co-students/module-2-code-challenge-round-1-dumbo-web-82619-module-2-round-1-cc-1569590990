class Episode < ApplicationRecord
    belongs_to :appearance
    has_many :guests, through: :appearances
end
