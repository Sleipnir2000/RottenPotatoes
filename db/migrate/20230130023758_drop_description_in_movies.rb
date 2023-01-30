class DropDescriptionInMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :description
  end
end
