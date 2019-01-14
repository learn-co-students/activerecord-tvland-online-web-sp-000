class DeleteGenres < ActiveRecord::Migration[5.1]
  def change
    drop_table :genres
  end
end
