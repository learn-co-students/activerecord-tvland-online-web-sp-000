class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  #has_one :catchphrase 
  
  def say_that_thing_you_say
    phrase = "#{self.name} always says: #{self.catchphrase}"
  end 
  # binding.pry
end