class Character < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    # I custom built this method, but it is already predefined with active_record associations 
    # def build_show(show_hash)
    #     Show.find_or_create_by(show_hash).tap{|show| show.characters << self}
    # end

end