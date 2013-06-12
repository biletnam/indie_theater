class RenameScreeningsToTime < ActiveRecord::Migration
  def change
    rename_column :showtimes, :screening, :time
  end
end
