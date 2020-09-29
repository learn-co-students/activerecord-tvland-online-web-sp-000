class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    # output: 'Tyrion Lannister always says: A Lannister always pays his debts'
    "#{character.name} always says: #{character.catchprase}"
  end
end