class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    def actors_list
      characters.collect do |character|
        Actor.find_by(id: character.actor_id).full_name
      end
    end
end