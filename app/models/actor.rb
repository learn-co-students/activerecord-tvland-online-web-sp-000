class Actor < ActiveRecord::Base
    
#associations
    has_many :characters
    has_many :shows, through: :characters

#full_name method
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    
#list_roles method
    def list_roles
        characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end

end