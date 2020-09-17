class AddGenreToShows < ActiveRecord::Migration[5.2]
    def change
        add_column :shows, :genre, :strings
    end
end