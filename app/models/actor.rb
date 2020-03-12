class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    actor_role=[]
    actor_role<<characters.map{|c| c.name}
    actor_role<<show.map{|s| s.name}
    actor_role
    actor_role.compact.join(" - ")
  end

end
