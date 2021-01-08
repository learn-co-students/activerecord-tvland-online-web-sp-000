class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        characters.map do |character| #characters.map will iterate through all instances of the character for this actor
            "#{character.name} - #{character.show.name}" #will interpolate 1) character's name & 2)the show's name
        end
    end

end