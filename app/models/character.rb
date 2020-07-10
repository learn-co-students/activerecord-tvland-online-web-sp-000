class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor

    def say_that_thing_you_say
        #'Tyrion Lannister always says: A Lannister always pays his debts'
        "#{self.name} always says: #{self.catchphrase}"
    end
  
end