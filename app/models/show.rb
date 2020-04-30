class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters 
    belongs_to :network

    def actors_list 
        self.actors.collect{|actor| actor.full_name}
    end

    def build_network(network_hash)
        Network.find_or_create_by(network_hash).tap{|network| network.shows << self}
    end
  
end