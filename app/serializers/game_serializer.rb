class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_score, :game_time, :game_mode
  has_one :user
end
