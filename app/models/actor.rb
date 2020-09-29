class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # returns the first and last name of an actor.
    Actor.first_name
    Actor.last_name
    # "#{self.first_name} #{self.last_name}" 
  end

  def list_roles
    # lists all of the characters that actor has 
    # alongside the show that the character is in.
    # output: ['Tyrion Lannister - Game of Thrones']
    "#{self.characters} - #{self.shows}"
  end
end