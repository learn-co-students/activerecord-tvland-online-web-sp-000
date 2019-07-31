class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " "  + self.last_name
  end

  def list_roles
    # expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
    arr = []
    self.characters.each do |item|
      arr << item.name + " - " + item.show.name
    end
    arr
  end
end
