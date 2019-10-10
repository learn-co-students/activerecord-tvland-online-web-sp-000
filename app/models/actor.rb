class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters = self.characters.map { |x| x.name }
    shows = self.shows.map { |x| x.name }
    role = characters.concat shows
    roles << role.join(" - ")
    roles
  end

end
