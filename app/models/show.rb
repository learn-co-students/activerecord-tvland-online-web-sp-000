class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  has_many :characters
  belongs_to :network

  def build_network(network)
   self.network = Network.create(call_letters: network.values[0])
  end

end