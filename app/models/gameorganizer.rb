class Gameorganizer < ApplicationRecord
  belongs_to :user
  belongs_to :gamesession
end
