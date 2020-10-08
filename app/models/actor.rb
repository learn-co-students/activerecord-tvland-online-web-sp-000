class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters 

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        rArray = []
        Character.all.each do | selected |
            if selected.actor == self
                rArray << "#{selected.name} - #{selected.show.name}"
            end
        end
        return rArray
    end
  
end