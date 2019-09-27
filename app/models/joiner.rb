class Joiner < ApplicationRecord
    has_many: :guests
    has_many: :episodes
end
