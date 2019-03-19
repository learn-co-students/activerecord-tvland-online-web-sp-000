class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(network_name)
    network = Network.new(network_name)
    self.network = network
  end
end