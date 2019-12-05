class Actor < ActiveRecord::Base
  has_many :characters
  belongs_to :show

 def full_name
   first = self.first_name
   last = self.last_name
   "#{first} #{last}"
 end

 def list_roles
   self.characters.map do |n|
     "#{n.name} - #{n.show.name}"
   end
 end
end
