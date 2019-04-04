class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(args)
    new_network = Network.find_or_create_by(args)
    new_network.shows << self 
  end
end
