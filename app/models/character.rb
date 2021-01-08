class Character < ActiveRecord::Base

    belongs_to :actor
    belongs_to :show 

    def say_that_thing_you_say
        p "#{name} always says: #{self.catchphrase}" #interpolate character.name with character.catchphrase
    end

end 