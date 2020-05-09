class Gamesession < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :rounds
end
