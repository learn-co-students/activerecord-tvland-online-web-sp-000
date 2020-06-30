class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    list = []
    self.characters.each {|character|
        #binding.pry
        list << "#{character.actor.first_name} #{character.actor.last_name}"
    }
    list
  end
end