class AddBuildShowToCharacter < ActiveRecord::Migration[5.1]

    def change
        add_column :characters, :build_show, :string
    end
end