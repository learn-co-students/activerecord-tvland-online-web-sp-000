class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def say_that_thing_you_say
    # return string with character and catchphrase
    # => 'Tyrion Lannister always says: A Lannister always pays his debts'    
    "#{self.name} always says: #{self.catchphrase}"
  end
end