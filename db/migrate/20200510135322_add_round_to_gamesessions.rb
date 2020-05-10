class AddRoundToGamesessions < ActiveRecord::Migration[6.0]
  def change
    add_reference :gamesessions, :round, null: false, foreign_key: true
  end
end
