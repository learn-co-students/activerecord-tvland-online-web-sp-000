class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(name)
    network = Network.find_or_create_by(name)
    self.network_id = network.id
    self.save
   end
end