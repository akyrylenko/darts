class CreateTries < ActiveRecord::Migration
  def change
    create_table :tries do |t|
      t.integer :position
      t.integer :amount
      t.integer :multiplicator
      t.integer :total
      t.integer :player_id

      t.timestamps
    end
  end
end
