class Game < ActiveRecord::Base

  has_and_belongs_to_many :players
  validates :date, presence: true
  validates :location, presence: true

end
