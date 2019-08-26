class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  has_many :characters
  belongs_to :network

  def actors_list
    collection = []
    self.characters.joins(:actor).each{|item|
      collection << (item.actor.first_name + " " + item.actor.last_name)
    }
    collection
  end

end
