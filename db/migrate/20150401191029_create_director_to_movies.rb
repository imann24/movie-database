class CreateDirectorToMovies < ActiveRecord::Migration
  def change
    create_table :director_to_movies do |t|
      t.integer :movie_id
      t.integer :director_id

      t.timestamps null: false
    end
  end
end
