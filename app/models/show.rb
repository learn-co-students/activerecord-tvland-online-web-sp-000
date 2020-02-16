class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    characters.collect { |c| "#{c.actor.first_name} #{c.actor.last_name}" }
  end

end
