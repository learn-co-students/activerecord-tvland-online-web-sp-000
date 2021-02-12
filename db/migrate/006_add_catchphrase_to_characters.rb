class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
    add_column :characters, :catchphrase, :text
end