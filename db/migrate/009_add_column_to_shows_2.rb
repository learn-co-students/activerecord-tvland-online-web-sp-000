class AddColumnToShows2 < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :genre, :string
  end
end
