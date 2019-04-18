class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :catchphrase
      t.integer :actor_id
      t.integer :show_id
    end
  end
end
