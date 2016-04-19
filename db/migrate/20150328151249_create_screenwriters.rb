class CreateScreenwriters < ActiveRecord::Migration
  def change
    create_table :screenwriters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
