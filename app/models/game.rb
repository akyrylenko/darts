class Game < ActiveRecord::Base
  attr_accessible :game_type

  belongs_to :winner, :class_name => 'Player'
end
