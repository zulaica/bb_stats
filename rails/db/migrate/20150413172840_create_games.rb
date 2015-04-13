class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player_id
      t.datetime :date
      t.string :location
      t.timestamps
    end
  end
end
