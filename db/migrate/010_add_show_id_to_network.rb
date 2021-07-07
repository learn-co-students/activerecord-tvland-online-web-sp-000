class AddShowIdToNetwork < ActiveRecord::Migration[5.1]
  def change
    add_column :networks, :show_id, :integer
  end
end
