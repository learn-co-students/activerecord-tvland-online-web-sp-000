class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor
    #syntax is different!! has_many objects (plural) // belongs_to class (singular)

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end