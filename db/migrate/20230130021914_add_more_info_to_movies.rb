class AddMoreInfoToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :more_info, :text
  end
end
