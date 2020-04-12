class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def build_network(call_letters:)
        self.network = Network.create(call_letters: call_letters)
    end

    def actors_list
        self.characters.map {|character| character.actor.full_name}
    end
end