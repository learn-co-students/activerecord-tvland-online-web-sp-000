class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    actors_shows_list = []
      self.actors.each { |actor| actors_shows_list << actor.full_name}
    actors_shows_list
    end
end