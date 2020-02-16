class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_array = []
    self.actors.each do |actor|
      actors_array << actor.full_name
    end
    actors_array
  end
end
