class CreateActorToMovies < ActiveRecord::Migration
  def change
    create_table :actor_to_movies do |t|
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps null: false
    end
  end
end
