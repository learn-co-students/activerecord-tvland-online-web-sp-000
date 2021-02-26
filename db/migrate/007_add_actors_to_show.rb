class AddActorsToShow<ActiveRecord::Migration[5.2]
    def change
        add_column :actors, :characters_id, :integer
    end
end