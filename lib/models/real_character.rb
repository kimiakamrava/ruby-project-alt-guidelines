class RealCharacter < ActiveRecord::Base
    has_many :memories
    has_many :parasites, through: :memories
end