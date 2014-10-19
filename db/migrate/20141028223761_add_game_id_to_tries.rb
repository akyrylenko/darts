class AddGameIdToTries < ActiveRecord::Migration
  def change
  	add_column :tries, :game_id, :integer, :null => false
  end
end
