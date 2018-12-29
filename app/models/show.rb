class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(letters)
    network_data = Network.new(letters)
    self.network = network_data
  end

end
