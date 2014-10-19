class AddWinnerToGames < ActiveRecord::Migration
  def change
  	add_column :games, :winner_id, :integer, :null => true
  end
end
