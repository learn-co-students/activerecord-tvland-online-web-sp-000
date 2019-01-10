class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles 
    array = []
    self.shows.size.times do |i|
      array << "#{self.shows[i].characters[i].name} - #{self.shows[i].name}"
    end 
    array
  end 
end