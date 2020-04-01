class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network


  def build_network(show)
    name = show[:call_letters]
    new_network = Network.new(call_letters: name)
    new_network.save
    self.network = new_network
  end

  def actors_list
    list = ["#{actors[0].first_name} #{actors[0].last_name}"]
  end
end