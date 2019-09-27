class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :raiting, numericality: { minimum: 1, maximum: 5} 
end
