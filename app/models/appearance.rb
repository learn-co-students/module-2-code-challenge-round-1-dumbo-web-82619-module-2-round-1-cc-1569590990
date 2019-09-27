class Appearance < ApplicationRecord
    has_many :episodes
    has_many :guests
    validates :rating, numericality: {
        only_integer: true,
        greater_than: 0, true
        less_than: 5, true
    }
end
