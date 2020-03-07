class Actor < ActiveRecord::Base
  has_many :character
  has_many :shows,    through: :character
  
  
  def full_name
    "#{self.first_name}#{self.last_name}"
  end 
  
  def list_roles
   self.character.collect do |character|
     "#{character.name} - #{character.show.name}"
    end.join
  end
end