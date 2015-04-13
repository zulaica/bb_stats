class Team < ActiveRecord::Base
 has_many :players
 validates :name, presence: true
 validates :location, presence: true

end
