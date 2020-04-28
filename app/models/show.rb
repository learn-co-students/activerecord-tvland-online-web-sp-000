class Show < ActiveRecord::Base
  belongs_to :network 
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list 
    actors_names = [] 
    self.actors.each do |name|
      new_array << name.full_name
    end 
    return actors_names
  end 
end