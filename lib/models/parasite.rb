class Parasite < ActiveRecord::Base
    has_many :memories
    has_many :real_characters, through: :memories

    def self.list_parasite_names
        by_id = self.all.sort_by{|parasite| parasite.name}
        by_id.collect{|parasite| parasite.name}
    end

    def self.parasite_instance(parasite_name)
        self.all.find{|parasite| parasite.name == parasite_name}
    end
    def self.chosen_parasite
     prompt.select("you chose ", Parasite.list_parasite_names)
    end

     
    def self.list_parasite_stories
        by_id = self.all.sort_by{|parasite| parasite.story}
        by_id.collect{|parasite| parasite.story}
    end

    def update_parasite(old_parasite, new_parasite)
        if !self.list_parasite_names.include?(new_parasite)
            old_parasite_id = find_id(old_parasite)
            new_parasite_id = find_id(new_parasite)
            memory_instance = self.memories.find_by parasite_id: old_parasite_id
            memory_instance.update_attribute(:parasite_id, new_parasite_id)
            self.parasite_updated_animation(old_parasite, new_parasite)
        else 
            puts "\n #{self.name} already killed #{new_parasite}! \n".colorize(:light_red) 
        end
    end
 
end 
