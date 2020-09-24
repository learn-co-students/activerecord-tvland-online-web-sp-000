class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    list = []
    self.actors.each do |t|
      list << t.full_name
    end
    list
  end
end