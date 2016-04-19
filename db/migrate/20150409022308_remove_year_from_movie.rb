class RemoveYearFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :year, :string
  end
end
