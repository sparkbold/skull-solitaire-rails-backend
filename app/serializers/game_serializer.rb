class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_score, :game_time
  has_one :user
end
