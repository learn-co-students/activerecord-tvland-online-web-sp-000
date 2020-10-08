class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :shows
    belongs_to :network

    def actors_list
        rArray = []
        Actor.all.each do | selected |
            if selected.shows.include?(self)
                rArray << selected.full_name
            end
        end
        return rArray
    end
  
end