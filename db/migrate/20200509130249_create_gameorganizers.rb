class CreateGameorganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :gameorganizers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gamesession, null: false, foreign_key: true

      t.timestamps
    end
  end
end
