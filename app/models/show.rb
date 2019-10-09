class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    actorNames = []
    self.characters.each do |i|
      actorNames << i.actor.full_name unless actorNames.include?(i.actor.full_name)
    end
    actorNames
  end
end