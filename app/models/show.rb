class Show < ActiveRecord::Base

  has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
end


#This doesn't save these instances, but will set up the right associations for us and when we save our character, the new show and network are also saved.
