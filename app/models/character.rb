class Character < ActiveRecord::Base
   belongs_to :actor
   belongs_to :show

   def say_that_thing_you_say
       "#{self.name} always says: #{self.catchphrase}"
   end
   def build_show(name:)
   show_in = Show.create(name: name)
    self.show = show_in
    self.show
   end
end