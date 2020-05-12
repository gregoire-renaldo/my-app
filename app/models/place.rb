class Place < ApplicationRecord
  belongs_to :user
  has_many :gamesessions
end
