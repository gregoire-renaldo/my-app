class Player < ApplicationRecord
  belongs_to :gamesession
  belongs_to :user
end
