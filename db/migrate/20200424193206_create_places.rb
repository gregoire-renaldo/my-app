class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.boolean :available
      t.string :name

      t.timestamps
    end
  end
end
