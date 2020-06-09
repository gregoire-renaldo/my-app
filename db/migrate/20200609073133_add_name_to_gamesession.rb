class AddNameToGamesession < ActiveRecord::Migration[6.0]
  def change
    add_column :game_sessions, :name, :string
  end
end
