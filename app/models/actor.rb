class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :chracters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    #expected results format: ['Tyrion Lannister - Game of Thrones', 'Dwarf - Lord of the Rings']
    
    #does find by and where support asso attributes or just column names?
    #yes they do support.
    #where returns an array whereas find by only returns the first one thing found, i believe
    characters = Character.where(actor: self)  
    resultarray = []
    characters.each do | char |
         resultarray << "#{char.name} - #{char.show.name}"
    end
    resultarray
  end


end