class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows,through: :characters
  
def full_name
    name = "#{self.first_name} #{self.last_name}"
end

def list_roles
    #make an array for roles
    roles = [] 
    #map and assign all characters to character_array
    character_array = self.characters.map { |character| character.name}
    #do the same for shows
    show_array = self.shows.map { |shows| shows.name}
    #concat the two lists and push into roles array
    role = character_array.concat show_array
    roles << role.join(" - ")
    #return the roles array
    roles
    end
end

