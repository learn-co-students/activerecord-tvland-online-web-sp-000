class Character < ActiveRecord::Base
    belongs_to :show 
    belongs_to :actor

    def say_that_thing_you_say 
        "#{name} always says: #{catchphrase}"
    end

    def build_show(show)
        show_build = Show.new
        show_build.name = show[:name]
        show_build.save 
        self.show = show_build
    end
end