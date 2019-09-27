class Episode < ApplicationRecord
    has_many :lists 
    has_many :guests, through: :lists 
end
