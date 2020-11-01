class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :shows
    belongs_to :network

    def actors_list
        self.characters.collect do |character|
            Actor.find(character.actor_id).full_name
        end
    end
end