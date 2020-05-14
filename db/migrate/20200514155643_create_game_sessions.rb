class CreateGameSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.integer :min_players
      t.integer :max_players
      t.text :description
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
