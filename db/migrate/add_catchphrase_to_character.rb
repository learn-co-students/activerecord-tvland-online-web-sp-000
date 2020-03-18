class AddCatchphraseToCharacter < ActiveRecord::Migration[5.2]

    def change
      add_column :characters
      t.string :catchphrase
    end


end
