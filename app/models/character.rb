class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}" #a well-known sentence or phrase, typically one that is associated with a particular famous person.
  end
end