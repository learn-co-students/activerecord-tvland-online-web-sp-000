class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + ' ' + self.last_name
  end
  
  def list_roles
    character_array = []
    self.characters.each do |character|
      character_array << character
    end
    character_array.each do |c|
     return "#{c.name} - #{c.show.name}"
    end
  end
  
  
end