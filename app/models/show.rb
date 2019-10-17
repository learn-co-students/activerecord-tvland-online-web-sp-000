class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters, :actors

  def actors_list
    self.actors.collect do |actor|
     "#{actor.name} - #{actor.show.name}"
    end.join
  end
end
