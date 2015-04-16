class Player < ActiveRecord::Base
  after_save :player_trigger
  belongs_to :team
  has_many :shots
  validates :name, presence: true
  validates :number, presence: true

  def channel
    "player"
  end

  def player_trigger
    Pusher['playerChannel'].trigger("new-player", {
      player: self
    })
  end
end
