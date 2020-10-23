
require "colorize"

class Interface

    attr_accessor :prompt, :real_character, :real_character_instance, :chosen_character , :chosen_parasite, :parasite_instance

    def initialize
        @prompt = TTY::Prompt.new
    end
     def run
        Ascii.logo
        self.start
        puts "\n"
        self.select_real_character
        self.stories
    end

  
   #Menus 
    def select_real_character
        self.chosen_character = prompt.select("you are ", RealCharacter.list_real_character_names)
        self.real_character_instance = RealCharacter.find_real_character_instance(self.chosen_character)
        puts "\n"
    end
    def stories
        Interface.clear
        self.current_real_character_stats
        response = prompt.select("hear #{self.chosen_character}'s memory?", ["Hear a parasite story","Find a parasite", "Kill parasite","room review"])
        
        if response == "Hear a parasite story"
            self.find_a_story
            self.continue_or_exit
        elsif response == "Find a parasite"
                self.find_a_parasite
                self.continue_or_exit
        elsif response == "Kill parasite"
            self.kill_parasite
            self.continue_or_exit
        elsif response == "room review"   
            self.update_parasite
            self.kill_parasite
        end
    end
    
    def continue_or_exit
        answer = prompt.select("Continue or exit?", ["Continue finding parasites?", "Exit"])
        if answer == "Exit"
            self.exit_message
        elsif answer == "Continue finding parasites?"
            puts "\n"
            self.stories
            Interface.clear
            puts "\n"
            self.select_real_character
            self.stories
        end
    end
        #helpers
        
        def display_parasites
            answer = prompt.select("Choose a parasite", Parasite.list_parasite_names)
            answer_arr = answer.split(' - ')
            remove_brackets = answer_arr[0].delete('[]')
        end
         
       def find_a_parasite
          self.parasite_instance = prompt.select(" #{self.chosen_character} found ", Parasite.list_parasite_names)
           puts "\n"
       end

        def current_real_character_stats
            puts " #{self.chosen_character} ".colorize(:black).on_green
            puts "\n"
        end

        
    def find_a_story
        self.chosen_parasite = prompt.select("the story: ", Parasite.list_parasite_stories)
        puts "\n"
    end  
  
    def kill_parasite
        delete_parasite = prompt.select("Select a parasite to kill", Parasite.list_parasite_names)
        puts "\n #{self.chosen_parasite} is dead! \n".colorize(:red) 
         
    end
    
    def update_parasite
            old_parasite = prompt.select(Parasite.list_parasite_names,"but i was lovely")
            new_parasite = display_parasites
            # self.real_character_instance.update_parasite(old_parasite, new_parasite)
            # puts "\n #{self.chosen_parasite} still alive and here! \n".colorize(:red)
        
    end
      
   #CLI Helpe
    def start 
       prompt.select("lets dive into memories!choose your character",["Start"])

    end

    def self.clear
        system "clear"
        Ascii.logo
    end
    
  
    def self.learn_loading
        puts "\n"
        3.times do |x|
            print "bang..boom..bang..ratata".colorize(:red)
            sleep(1)
        end
        sleep(1)
    end

    def exit_message
        Interface.clear
        puts "\n Peace among world ! \n".colorize(:green)
    end
end



