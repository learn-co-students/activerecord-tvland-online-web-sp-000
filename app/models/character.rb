class Character < ActiveRecord::Base
#associations
    belongs_to :show
    belongs_to :actor

#say_that_thing_you_say method
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
  
end