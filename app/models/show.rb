class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
  #returns an array of the full names of each actor associated with a show
    self.characters.collect do |actor_names|
      "#{actor_names.actor.full_name}"
    end
  end
end

