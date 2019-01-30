class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
 
  def full_name 
    name_str = self.first_name + " " + self.last_name
    name_str
  end

  def list_roles 
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}
  end
end