class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  #  self.first_name + " " + self.last_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # can list all of its shows and characters
    roles = []
    characters = self.characters.map { |c| c.name}
    shows = self.shows.map { |m| m.name}
    role = characters.concat(shows)
    roles << role.join(" - ")
  end


end
