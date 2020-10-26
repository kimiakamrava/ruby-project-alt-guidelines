require "colorize"

class Interface

    attr_accessor :prompt, :real_character, :real_character_instance, :chosen_character , :chosen_parasite, :parasite_instance

    def initialize
        @prompt = TTY::Prompt.new
    end

     #Main Runner Method
    def run
        Ascii.logo
        self.start
        puts "\n"
        self. main_menu_arr
        self.main_menu  
        self.sign_in 
        self.member_access_arr
        self.member_access 
        self.player_loop
    end
  
    def new_character
      charactername = prompt.ask("please choose your character from smith family")
      return $real_character if RealCharacter.find_by(name: charactername)
  
      $real_character = RealCharacter.create({name: charactername})

      #new user gets added to db
    end
  
    def sign_in
      real_character = prompt.ask("Please enter your chosen character: ")
      $real_character = RealCharacter.find_by(name: real_character)
      $real_character.nil? ? new_character : $real_character
    end

    def member_access_arr
      ["New Parasite Story", "Your Parasites", "Kill Parasite", "Delete Your Character", "Quit"]
    end

    def member_access 
      prompt.select("Hi #{new_character}, lets dive into memories") do |menu|
          member_access_arr.each_with_index do |choice, index|
              menu.choice choice, index
          end
      end
  end

   def main_menu_arr
     ["Choose your character", "sign in", "Quit"]
   end

 def main_menu   
   prompt.select("Welcome to Total Rickal Game!") do |menu|
       main_menu_arr.each_with_index do |choice, index|
           menu.choice choice, index
       end
   end
 end
  def start 
   prompt.select("lets dive into memories!choose your character",["Start"])
  end
  
  
def main_loop
  print Ascii.logo
  print "\n" * 3
    case main_menu
    when 0 
        system('clear')
        print Ascii.logo
        print "\n" * 3
        choose_your_characcter
        sleep (1)
        system('clear')
        
    when 1
        system('clear')
        print Ascii.logo
        print "\n" * 3
        sign_in
        sleep(1)
        system('clear')
        player_loop
    when 2
        system('clear')
        puts "Peace among worlds"
    end
end

def player_loop
    $real_character = RealCharacter.pluck(:name)
    print Ascii.logo
    print "\n" * 3
    case member_access
    when 0 #new parasite story
        system('clear')
        print Ascii.logo
        print "\n" * 3
        chosen_stories = Parasite.pluck(:id, :story)
        # memories = Memory.create({real_character_id: $real_character.id, parasite_id: $parasite.id})
        memories = Memory.create(parasite: Parasite.all.sample, real_character:RealCharacter.all.sample)
        puts chosen_stories
        
    end
    
  end
  
  
end




