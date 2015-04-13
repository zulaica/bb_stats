class Shot < ActiveRecord::Base

  belongs_to :player
  validates :made, presence: true
  validates :value, presence: true

end
