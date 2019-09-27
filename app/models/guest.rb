class Guest < ApplicationRecord
belongs_to :appearance
has_many :episodes, through: :appearances
end
