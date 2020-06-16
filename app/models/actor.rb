class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #lists the first and last name of an actor
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #lists all of the characters that actor has 
    #alongisde the show that the character is in.
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end