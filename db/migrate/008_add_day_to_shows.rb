class AddDayToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :day, :string, null: false
  end
end