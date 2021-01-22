class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
    def change
        add_column :characters, :catchphrase, :string
        #I may have to do a rake db:rollback on this, if it turns out to be wrong.
    end
end