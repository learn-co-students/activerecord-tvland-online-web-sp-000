class CreateActors < ActiveRecord::Migration[5.1]

create_table :actors do |a|
  a.string :first_name
  a.string :last_name
end 
end
