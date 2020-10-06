class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    a = []
    self.characters.each do |c|
        name = c.name
        show = c.show.name
        a << name + " - " + show
    end
    a
  end
end