class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters 

    def full_name
        self.first_name + ' ' + self.last_name
    end

    def list_roles 
        self.characters.collect do |character|
            character.name + " - " + self.shows.find_by_id(character.show_id).name
        end
    end
  
end