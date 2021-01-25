class Show < ActiveRecord::Base
  has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def full_name
        "#{self.first_name} #{self.last_name}"
      end

    def actors_list
    self.actors.collect {|actor| "#{actor.full_name}"}
  end
end
