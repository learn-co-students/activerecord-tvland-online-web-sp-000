class CreateActors < ActiveRecord::Migration[4.2]
  def change 
    create_table :actors do |t|
      t.string :first_name
    end 
  end 
end 