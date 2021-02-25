class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network


    def build_network(show)
        # binding.pry
        Network.create(show)
    end


    # def actors_list
    #     shows = Actor.all.collect do |s|
    #         s.show == self
    #     end
    #     shows.collect do |c|
    #         c.full_name
    #     end
    # end
  
end