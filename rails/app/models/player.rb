class Player < ActiveRecord::Base
 belongs_to :team
 validates :name, presence: true
 validates :number, presence: true

end
