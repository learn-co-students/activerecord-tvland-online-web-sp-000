class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say
    # binding.pry
    "#{self.name} always says: #{self.catchphrase}"
  end 
  
  def build_show(show_name)
    new_show = Show.new(show_name)
    self.show = new_show
    ns = self.show
    # binding.pry
  end 
  
  # def build_network
  #   binding.pry
  # end 
end