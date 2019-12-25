class Show < ActiveRecord::Base

  has_many :characters
  belongs_to :network

  def actors_list
    self.actor.map
  end
end 
end
