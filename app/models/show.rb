class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        # this is what I needed to do before I set up the has_many_through relationship
        # self.characters.collect do |character|
        #     character.actor.full_name
        # end

        self.actors.map { |actor| actor.full_name }
    end
end