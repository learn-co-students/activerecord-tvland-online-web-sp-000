class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    attr_accessor :actors

    def actors_list
        self.characters.collect {|a| a.actor.full_name}
    end
end

        