require 'pry'
class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors

  def actors_list
    #Sadly there is no direct actors-shows link as this is built SO HERE WE GO
    actors = []
    #Empty actors array
    self.characters.each do |c|
    #Each show has characters so we're iterating over the characters array
        actor = Actor.find_by(id: c.actor_id)
        #For each character find the actor by the actor id for the character, assign it as a variable
        actors << "#{actor.first_name} #{actor.last_name}" 
        #Push that object variable's first name and last name into the actors array
    end 
    actors
    #Boom, return the array
  end 
end