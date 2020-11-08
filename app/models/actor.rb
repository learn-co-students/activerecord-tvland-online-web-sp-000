class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    list = []
    shows.each do |s|
        characters.each do |c|
            list = "#{c.name} - #{s.name}"
        end
    end
    list
  end
end