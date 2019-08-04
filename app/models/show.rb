class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network


  def actors_list
   #Returns an Array of the full names of each actor
   #associated with the a show.

    self.actors.map { |a| "#{a.first_name} #{a.last_name}"}

  end
end
