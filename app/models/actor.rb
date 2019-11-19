class Actor < ActiveRecord::Base
  has_many :characters
  belongs_to :show
  
  def full_name
    first = self.first_name
    last = self.last_name
    "#{first} #{last}"
  end
  
  def list_roles
    #lists all characters alongside show that actor is in
  end
end