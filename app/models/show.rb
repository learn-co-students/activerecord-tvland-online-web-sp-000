class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors_in_show = self.actors.map do |actor|
        "#{actor.first_name} #{actor.last_name}"
    end
    actors_in_show
  end
end