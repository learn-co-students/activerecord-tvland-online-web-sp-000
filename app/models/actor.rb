class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        [self.first_name, self.last_name].join(" ")
    end

    def list_roles
        lists = [ ]
        self.characters.collect do |character|
            list = [character.name, character.show.name].join(" - ")
            lists << list
        end
        lists
    end
end