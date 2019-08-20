require 'pry'

class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        actors = []
        self.characters.each do |c|
            actors << c.actor.full_name
        end
        actors
    end

    def self.build_network(call_letters:)
        call_letters.shows << self
    end
  
end