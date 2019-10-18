class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters

  def actors_list
    self.first_name
    self.last_name
  end
end
