class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

  def actors_list
    self.characters.collect {|c| c.actor.full_name}
  end
  
  def build_network(args)
    Network.new(args).shows << self
  end
end