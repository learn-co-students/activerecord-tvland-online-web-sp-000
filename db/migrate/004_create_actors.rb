class CreateActors < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :actors do |c| #we get a block variable here for the table
      c.string :first_name
      c.string :last_name
    end
  end
end
