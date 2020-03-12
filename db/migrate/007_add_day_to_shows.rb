class AddDayToShows < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    add_column :shows, :day, :string
  end
end
