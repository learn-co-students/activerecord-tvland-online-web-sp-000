class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters)
    self.network = Network.create(call_letters)
  end

  def actors_list
    self.actors.collect{|actor| actor.full_name}
  end
end