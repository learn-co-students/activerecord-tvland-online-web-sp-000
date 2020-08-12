class Show < ActiveRecord::Base

    has_many :characters
    belongs_to :network

    def actors_list
        # binding.pry
       a=[]
       self.characters.each {|b|
        a << b.actor.full_name    
    } 
    a
    end

end