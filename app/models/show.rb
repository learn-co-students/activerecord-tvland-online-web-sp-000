class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :network

  def actors_list
    list = []
    self.characters.each do |c|
        list << c.actor.full_name
    end
    list
  end

end