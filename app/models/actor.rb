class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    roles = []
    character_name = self.characters.map {|a| a.name}
    roles << character_name
    show_name = self.shows.map {|s| s.name}
    roles << show_name
    
    roles.join(" - ")
  end
end
