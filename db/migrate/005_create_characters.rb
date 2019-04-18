class CreateCharacters < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :characters do |c| #we get a block variable here for the table
      c.string :name
      c.integer :show_id
    end
  end
end
