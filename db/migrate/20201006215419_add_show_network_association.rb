class AddShowNetworkAssociation < ActiveRecord::Migration[5.2]
  def change
    #add_column :shows, :network_id, :integer
    add_column :networks, :show_id, :integer
  end
end
