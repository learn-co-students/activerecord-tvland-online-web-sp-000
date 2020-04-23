class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network
  
  def actors_list
    actors = self.characters.map{|char| char.actor.full_name}
  end 
end