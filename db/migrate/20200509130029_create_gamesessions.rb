class CreateGamesessions < ActiveRecord::Migration[6.0]
  def change
    create_table :gamesessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true
      t.datetime :startTime
      t.datetime :endTime

      t.timestamps
    end
  end
end
