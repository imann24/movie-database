class CreateScreenwriterToMovies < ActiveRecord::Migration
  def change
    create_table :screenwriter_to_movies do |t|
      t.integer :movie_id
      t.integer :screenwriter_id

      t.timestamps null: false
    end
  end
end
