class GameSession < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :players, dependent: :destroy
  validates :min_players, numericality:  { only_integer: true }
  validates :min_players, inclusion: 2..10

  validates :max_players, numericality:  { only_integer: true }
  validates :max_players, numericality: {less_than_or_equal_to: :min_players}


end
