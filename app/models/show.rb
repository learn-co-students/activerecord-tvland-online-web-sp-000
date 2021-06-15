class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

  def actors_list
    self.characters.map do |character|
        character.actor.full_name
    end
  end
end