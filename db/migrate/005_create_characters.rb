class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |table|
            table.string :name
            table.integer :actor_id
            table.integer :show_id
        end
    end
end