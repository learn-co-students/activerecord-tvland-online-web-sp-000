require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    fullname = "#{self.first_name} #{self.last_name}"
    fullname
  end

  def list_roles
    array = []
    self.characters.each do |c|
        array << "#{c.name} - #{c.show.name}"
        #binding.pry
    end
    array
  end

end