class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    arrayList = []
    self.characters.each { |char|
      string = char.actor.first_name + " " + char.actor.last_name
      arrayList << string
    }
    arrayList

  end



  def build_network(name)

  end

end
