class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return (self.first_name + " " + self.last_name)
  end

  def list_roles
    roles = []
    self.characters.each {|character|
      string = character.name + " - " + character.show.name
      roles << string
    }
    #actorRoles = self.characters + " - " + self.shows
    puts roles
    roles
  end

end
