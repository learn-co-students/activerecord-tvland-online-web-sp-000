class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    self.characters.collect do |character|
      "#{character.actor.first_name} #{character.actor.last_name}"
    end
  end
end
