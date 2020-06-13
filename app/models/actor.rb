require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    roles = []
    self.shows.each do |show|
        self.characters.each do |character|
            if show.id == character.show_id
                roles << "#{character.name}" + " - " + "#{show.name}"
            end
        end
    end
    roles
    #binding.pry

  end
end