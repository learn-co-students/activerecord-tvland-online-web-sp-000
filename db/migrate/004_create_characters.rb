class CreateCharacters < ActiveRecord::Migration[5.1]

  def create
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
