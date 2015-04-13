class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.integer :number
    end
  end
end
