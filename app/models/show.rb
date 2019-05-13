class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(options={})
    network = Network.create(options)
    self.network = network
  end
end