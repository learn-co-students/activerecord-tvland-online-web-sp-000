class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list # returns array of the full names of each actor associated with the show
    end
end