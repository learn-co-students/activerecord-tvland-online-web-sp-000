class AddActorIdToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :actor_id, :integer
  end
end
