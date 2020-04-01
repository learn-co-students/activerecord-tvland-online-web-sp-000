class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters

    def full_name 
        "#{first_name} #{last_name}" 
    end 

    def list_roles 
        char = characters[0]
        char = "#{char.name} - #{Show.find_by(id: char.show_id).name}"
    end 
end