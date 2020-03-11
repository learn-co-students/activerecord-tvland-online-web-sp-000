class CreateActors < ActiveRecord::Migration[5.2]
 def change
   create_table :Actors do |a|
   a.string :first_name
   a.string :last_name
  end 
 end 
end 