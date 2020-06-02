class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.map do |actor|
            return "#{actor.name} - #{Show.find_by(id: actor.show_id).name}"
        end
    end
end