class CorrectMislabeledSeasonColumn < ActiveRecord::Migration[5.1]
    def change
        change_table :shows do |t|
            t.remove :genre, :season
            t.string :genre
            t.string :season
            # Added a migration after I didn't seem to be able to rollback previous
            # migrations where I had accidentally added a "season" column in both prior migrations.
            # This probably isn't the best solution, but I was able to get the tests passing...
        end
    end
end