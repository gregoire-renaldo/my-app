class RemoveNicknameFromPlayer < ActiveRecord::Migration[6.0]
  def change

    remove_column :players, :nickname, :string
  end
end
