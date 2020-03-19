class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    # binding.pry
    self.actors.map {|a| "#{a.first_name} #{ a.last_name}"}.flatten

  end


  def self.build_network
    self.network
  end

end
