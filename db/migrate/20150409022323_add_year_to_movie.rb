class AddYearToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :year, :date
  end
end
