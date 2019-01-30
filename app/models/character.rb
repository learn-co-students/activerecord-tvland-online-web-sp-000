class Character < ActiveRecord::Base
   belongs_to :actor 
   belongs_to :show 

   def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
   end

   def build_show(name)
    show = Show.find_or_create_by(name)
    self.show_id = show.id
    self.save
    self.show
   end
end