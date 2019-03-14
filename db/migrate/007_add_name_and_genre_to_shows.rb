class AddNameAndGenreToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :name, :string
    add_column :shows, :genre, :string
  end
end
