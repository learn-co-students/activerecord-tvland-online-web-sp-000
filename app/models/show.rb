class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.characters.map do |shows|
            Actor.find_by(id: shows.actor_id).first_name + " " + Actor.find_by(id: shows.actor_id).last_name
            # Actor.find_by(id: [Character.find_by(id: self.id).actor_id]).first_name
        end
    end
end
