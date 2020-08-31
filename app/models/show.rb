class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    

    #returns a list of the full names of each actor associated with the show
    def actors_list
        actors.collect do |actor|
            actor.first_name + " " + actor.last_name
        end
    end

end