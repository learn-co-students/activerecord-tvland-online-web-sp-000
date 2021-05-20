require 'pry'

class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.characters.map do |c|
            Actor.find(c.actor_id).full_name
        end
    end

end