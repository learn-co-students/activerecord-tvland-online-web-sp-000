class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  attr_accessor :first_name, :last_name
  
  def initialize (first_name: "Peter", last_name: "Dinklage")
    @first_name = :first_name.to_s
    @last_name = :last_name.to_s
  end
  
  def full_name
    "#{:first_name} #{:last_name}"
  end
  
  def list_roles
    "#{Character.find(:actor_id)} - #{Show.find(:actor_id)}
  end
  
end