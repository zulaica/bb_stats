class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :team_id
end
