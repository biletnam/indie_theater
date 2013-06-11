class ChangeGenresRelationshipToMovies < ActiveRecord::Migration
  def change    
    change_table :movies do |t|
      t.remove :genres
    end
  end
end
