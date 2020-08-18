class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
    def actors_list
        array = []
        self.characters.each do |character|
            array << character.actor.full_name
        end 
        array
    end

    def build_network(arg)
        network = Network.create(arg)
        self.network = network
    end 

end