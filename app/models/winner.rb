class Winner < ApplicationRecord
  belongs_to :gamesession
  belongs_to :user
end
