class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        # returns the first and last name of an actor
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        # lists all characters actor has alongside show character is in
        self.characters.collect do |char|
            "#{char.name} - #{char.show.name}"
        end
    end
end