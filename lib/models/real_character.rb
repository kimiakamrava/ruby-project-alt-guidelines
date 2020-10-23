class RealCharacter < ActiveRecord::Base
    has_many :memories
    has_many :parasites, through: :memories

    
    def self.list_real_character_names
        by_id = self.all.sort_by{|real_character| real_character.name}
        by_id.collect{|real_character| real_character.name}
    end

    def self.find_real_character_instance(real_character_name)
        self.all.find{|real_character| real_character.name == real_character_name}
    end

     #Helper Methods

    def random_message
       ["#{self.name} is in love with sleepy gary.",
        "#{self.name} Prepare to be emancipated from your own inferior genes!”!",
        "#{self.name} I'm Ants in my Eyes Johnson, everything's black, I can't see a thing, and I also can't feel anything either!.", 
        "#{self.name} Detective, I'm... This is upsetting to me because I feel like I don't need no Regular Leg partner.",
        "#{self.name} You pass butter.",
        "#{self.name} is having fun!",
        "#{self.name} is Proud vet of the Battle of Klorgon, father of 7,543 hatchlings, kraan enthusiast. !", 
        "#{self.name} Like we say in Brooklyn...we're walkin' here!." ].sample
    end

    def found_a_parasite(parasite_name)
        Interface.learn_loading
        puts "#{self.name} found #{parasite_name}!".colorize(:green)
        puts "#{self.random_message}"
        self.list_parasites
    end

    def move_deleted_animation(move_name)
        Interface.delete_loading
        puts "#{self.name} forgot #{move_name}!".colorize(:green)
        puts "#{self.random_message}"
        self.list_parasites
    end

    def parasite_updated_animation(old_parasite, new_parasite)
        Interface.learn_loading
        puts "#{self.name} killed #{old_parasite} and learned #{new_parasite}!".colorize(:green)
        puts "#{self.random_message}"
        self.list_parasites
    end

end