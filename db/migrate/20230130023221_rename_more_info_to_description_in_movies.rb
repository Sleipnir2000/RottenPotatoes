class RenameMoreInfoToDescriptionInMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :more_info, :description
  end
end
