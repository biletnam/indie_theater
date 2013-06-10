class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.datetime :opening_date
      t.string :starring
      t.string :director
      t.integer :runtime
      t.string :released_by
      t.string :genres
      t.boolean :three_d
    end
  end
end
