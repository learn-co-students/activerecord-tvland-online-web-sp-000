class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    #even iwth a s has many through relationship, u can just get it as if its a has many relationship
    array = []
    self.actors.each do | actor |
        array << actor.full_name
    end
    array 
  end


end