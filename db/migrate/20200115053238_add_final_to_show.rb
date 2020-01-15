class AddFinalToShow < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :genre, :string
    add_column :shows, :season, :string
  end
end
