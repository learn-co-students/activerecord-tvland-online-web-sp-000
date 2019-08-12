class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
   self.actors.collect do |a|
   "#{a.first_name} #{a.last_name}"
  end
 end
end