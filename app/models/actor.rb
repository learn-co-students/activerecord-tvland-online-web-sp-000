require 'pry'
class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end 
  
  def list_roles
    char_name = self.characters.map {|c| c.name}.join
    show_name = self.shows.map {|s| s.name}.join
    "#{char_name} - #{show_name}"
  end 
  
end