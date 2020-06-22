class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(letters={})
  a = Network.create(call_letters: "#{letters.values[0]}")
  self.network_id = a.id
  binding.pry
end

  def actors_list
    a = self.characters
    list = a.map do |i|
      Actor.where(id: "#{i.id}")
    end
    list.flatten!
    i = 0
    array = []
    while i < list.size 
    full_name = "#{list[i].first_name} #{list[i].last_name}"
    i += 1
    array << full_name
    end
    array
      # binding.pry
  end
end