class Game < ApplicationRecord
  has_many :game_sessions
  has_many :users
end
