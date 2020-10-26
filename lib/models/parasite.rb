class Parasite < ActiveRecord::Base
    has_many :memories
    has_many :real_characters, through: :memories
end 
