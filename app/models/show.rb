class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    
    def actors_list
        self.actors.collect do |name|
             name.full_name
        end
    end

    def call_letters(nw)
        Network.create(nw)
    end

end