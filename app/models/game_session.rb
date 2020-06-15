class GameSession < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :players, dependent: :destroy
end
