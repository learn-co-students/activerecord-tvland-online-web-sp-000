class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        #returns the first and last name of an actor
        full_name = "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #lists all of the characters that actor has alongside the show that the character is in
        
        character_name = self.characters.map {|character| character.name}.join("")
        show_name = self.shows.map {|show| show.name}.join("")
        list_role = "#{character_name} - #{show_name}"
        # binding.pry
    end
  
end