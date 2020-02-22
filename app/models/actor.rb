class Actor < ActiveRecord::Base
   has_many :characters
   has_many :shows, through: :characters
  
   def full_name
      "#{self.first_name} #{self.last_name}"
   end 
   
   def list_characters 
     character = nil 
     self.characters.select do |c|
       character = c.name 
     end 
     character 
   end 
   
   def list_shows 
     show = nil 
     self.shows.each do |s|
       show = s.name 
     end 
     show 
   end 

   def list_roles 
     ["#{list_characters} - #{list_shows}"]
   end 
end