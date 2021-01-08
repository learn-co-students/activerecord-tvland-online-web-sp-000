class Show < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        characters.map do |character| #iterate through all characters for this show
            "#{character.actor.full_name}" #map character's actor's full_name method 
        end
    end

end 