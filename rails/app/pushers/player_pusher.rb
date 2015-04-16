class PlayerPusher < ActiveModel::Pusher
  def channel(event)
    "player"
  end
  events :created, :updated, :destroyed
end
