class Show < ActiveRecord::Base
    # has_many :actors
    has_many :characters
    belongs_to :network
    def build_network(call_letters:)
        new_network = Network.create(call_letters: call_letters)
        self.network = new_network
    end

    def actors_list
      self.characters.map{|e| "#{e.actor.first_name} #{e.actor.last_name}"}
    end
end