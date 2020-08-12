class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        # binding.pry
        a=[]
        self.characters.each {|b|
            a << "#{b.name} - #{shows.find(b.show_id).name}"
    }
    a
    end
  
end