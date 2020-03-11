class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
      create_table :Characters do |c|
      c.string :name 
      c.string :catchphrase
      c.integer :actor_id 
      c.integer :show_id 
   end 
  end 
end 