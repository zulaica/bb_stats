class Player < ActiveRecord::Base

  belongs_to :team
  has_many :shots
  validates :name, presence: true
  validates :number, presence: true

end
