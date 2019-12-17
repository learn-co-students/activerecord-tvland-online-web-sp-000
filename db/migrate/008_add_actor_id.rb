class AddActorId < ActiveRecord::Migration[5.2]
    add_column :characters, :actor_id, :integer
end