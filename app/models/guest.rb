class Guest < ApplicationRecord
    has_many :lists 
    has_many :episodes, through: :lists 

end
