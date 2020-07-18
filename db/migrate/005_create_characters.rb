class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.text :name
      t.integer :actor_id
      t.integer :show_id
      t.string :catchphrase
    end
  end
end
