class AddColumnCatchphrase < ActiveRecord::Migration[5.1]
#we are adding an extra column 'catchphrase' to our characters table
    def change
        add_column :characters, :catchphrase, :string
    end

end