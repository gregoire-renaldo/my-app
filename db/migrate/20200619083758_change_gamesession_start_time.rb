class ChangeGamesessionStartTime < ActiveRecord::Migration[6.0]
  def change
    change_column :game_sessions, :start_time, :datetime
    change_column :game_sessions, :end_time, :datetime
  end
end
