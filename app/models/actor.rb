require 'pry'
class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    f = self.first_name
    l = self.last_name
    full = "#{f} #{l}"
  end

  def list_roles
    c = Character.where(actor_id: self.id)
     self.characters = c
    c[0].actor = self
     roles = c.map do |character|
     Show.where(id: c[0].show_id)
     end
     roles.flatten!

    # roles[0].characters
    c[0].show = roles[0]
    c[0].save
    name = c[0].name

    role = roles[0].name
    join = "#{name} - #{role}"
    array = []
    array << join
       array
    
  end
end