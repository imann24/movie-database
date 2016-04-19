class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.time :length
      t.string :genre
      t.float :score
      t.text :synopsis
      t.integer :year

      t.timestamps null: false
    end
  end
end
