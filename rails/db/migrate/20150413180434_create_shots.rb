class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.boolean :made
      t.integer :type
      t.integer :player_id
    end
  end
end
