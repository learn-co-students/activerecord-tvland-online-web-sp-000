class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network



  def actors_list
    # Returns an array of the full name of each actor
    #A show has many actors through characters
    self.actors.map {|actor| actor.full_name}
  end

end
