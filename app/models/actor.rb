class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  
  def list_roles
    actor = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    character = Character.new(:name => "Khaleesi")
    character.actor = actor
    show = Show.new(:name => "Game of Thrones")
    character.show = show
    character.save
    "#{character.name} - #{show.name}"
  end


end