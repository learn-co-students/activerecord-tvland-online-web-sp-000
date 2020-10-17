class Show < ActiveRecord::Base
  
  has_many :actors, through: :characters
  has_many :characters
  belongs_to :network
  
  def actors_list
    self.characters.map do |character|
      character.actor.full_name
    end
  end
  
  
  
end