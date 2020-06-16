class Player < ApplicationRecord
  belongs_to :game_session
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => [:game_session_id], :message => "you have already joined this game session"
end
