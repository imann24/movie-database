class CreateStudioToMovies < ActiveRecord::Migration
  def change
    create_table :studio_to_movies do |t|
      t.integer :movie_id
      t.integer :studio_id

      t.timestamps null: false
    end
  end
end
