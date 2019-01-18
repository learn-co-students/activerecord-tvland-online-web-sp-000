class AddSeasonToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :season, :string, null: false
  end
end