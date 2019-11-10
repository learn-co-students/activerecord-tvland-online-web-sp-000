require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
 # belongs_to :show
  

  def full_name
    
    p "#{self.first_name} #{self.last_name}" 
  end 
  
  
     
  def list_roles 
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}
  end 
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end


 