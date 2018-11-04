class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(options = {})
    network = Network.find_or_create_by(options)
    network.shows << self

    network
  end
end
