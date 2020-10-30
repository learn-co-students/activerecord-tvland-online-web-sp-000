require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    characters = []
    self.characters.each do |c|
        characters << "#{c.name} - #{Show.find_by(id: c.show_id).name}"
        #Test wants "Character - show" format
        #c.name obv is the name belonging to the character
        #Second part is ugh
        #Show object . find the right object by (id = this iteration of the character . show_id it belongs to) . name of the show
    end 
    characters
  end 

end