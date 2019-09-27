class Appearance < ApplicationRecord
    has_many :episodes
    has_many :guests
end
