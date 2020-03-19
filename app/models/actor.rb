class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    has_many :networks, through: :shows

    def full_name
      "#{self.first_name}" " " "#{self.last_name}"
    end

    def list_roles
        # self.shows.map {|a| "#{a.characters}" "-" "#{a.name}" }
        self.characters.map {|a| "#{a.name}" " - " "#{a.show.name}"   }
    end

end
