class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  belongs_to :networks

  def actors_list
    self.actors.map do |actor|
      actor.first_name + " " + actor.last_name
    end
  end

  def build_network(network_attributes)
    Network.create(network_attributes)
  end

  def network
    self.save
    self.network_id = self.id
    Network.where(id: self.network_id).first
  end

end
