class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    actors = []
    self.actors.each do |actor|
      actors << actor.full_name
    end
    actors
  end
end
