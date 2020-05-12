class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :edition
      t.string :cmc
      t.string :legality
      t.string :color
      t.integer :price
      t.references :deck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
