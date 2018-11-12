class CardSerializer < ActiveModel::Serializer
  attributes :id, :suit, :value, :code, :image
end
