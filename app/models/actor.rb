class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows
     def list_roles
        self.characters.collect { |c| c.name + " - " + c.show.name }
       # binding.pry
    end

    def full_name
       self.first_name + " " + self.last_name
    end

end