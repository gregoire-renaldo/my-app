class AddGameorganizerToGamesession < ActiveRecord::Migration[6.0]
  def change
    add_reference :gamesessions, :gameorganizer, null: false, foreign_key: true
  end
end
