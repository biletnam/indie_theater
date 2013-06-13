class AddCounterCacheToShowtime < ActiveRecord::Migration
  def change
    add_column :showtimes, :tickets_count, :integer, :default => 0
  end
end
