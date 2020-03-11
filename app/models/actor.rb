class Actor < ActiveRecord::Base
  # make associations here
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # can list all of its shows and characters
  def list_roles
    self.characters.collect do |character|
       "#{character.name} - #{character.show.name}"
     end
  end
end
