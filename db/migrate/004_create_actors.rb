class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamps null: false
    end
  end
end