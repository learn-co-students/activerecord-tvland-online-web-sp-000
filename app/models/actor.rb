class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    
    def list_roles        
        role_list = []
        self.characters.each do |c|
            role_list << "#{c.name} - #{c.show.name}"
        end
        role_list
    end
end
