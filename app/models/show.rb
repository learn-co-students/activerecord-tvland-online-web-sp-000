class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # returns an Array of the full names of each actor associated with the show.
    Show.actors.map {|a| a.full_name}
  end
end