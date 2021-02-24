class CreateCharacters < ActiveRecord::Migration[5.1]
  def change 
    create_table :characters do |t|
      t.string :name 
      t.integer :show_id
      t.string :catchphrase 
      t.integer :actor_id 
    end
  end
end