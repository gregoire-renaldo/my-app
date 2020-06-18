class GameSession < ApplicationRecord
  belongs_to :user
  has_many :players, dependent: :destroy
  belongs_to :game
  validates :min_players, numericality:  { only_integer: true }
  validates :min_players, inclusion: 2..10

  validates :max_players, numericality:  { only_integer: true }
  validates :max_players, numericality: {more_than_or_equal_to: :min_players}


end
