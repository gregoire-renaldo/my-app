class RemoveTypeFromGames < ActiveRecord::Migration[6.0]
  def change

    remove_column :games, :type, :string
  end
end
