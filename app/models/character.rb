class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    return "Steve Urkel always says: " + self.catchphrase
  end

end
