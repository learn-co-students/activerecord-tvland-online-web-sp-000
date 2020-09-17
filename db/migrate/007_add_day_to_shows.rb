class AddDayToShows < ActiveRecord::Migration[5.2]
    def change
        add_column :shows, :day, :strings
    end
end