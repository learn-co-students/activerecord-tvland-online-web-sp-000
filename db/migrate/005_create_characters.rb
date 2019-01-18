class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :show_id, null: false
      t.integer :actor_id, null: false
      t.timestamps null: false
    end
  end
end