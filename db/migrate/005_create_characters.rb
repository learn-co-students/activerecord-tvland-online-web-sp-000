class CreateCharacters < ActiveRecord::Migration[5.2]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    def change
      
      create_table :characters do |c| #we get a block variable here for the table
        c.string :name
        c.string :catchphrase
        c.integer :show_id
        c.integer :actor_id
    end
  end
end