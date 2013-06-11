class RemoveRatingAddRatingIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :rating_id, :integer
    
    change_table :movies do |t|
      t.remove :rating
    end
  end
end
