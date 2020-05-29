class Show < ActiveRecord::Base
    has_many :characters
    has_many :actor, through: :characters
    belongs_to :network

    def actors_list
        self.actor.collect do |x|
            "#{x.first_name} #{x.last_name}"
        end 
    end 

end