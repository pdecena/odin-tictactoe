require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/game'

playerOne = Player.new.define_player_one
playerTwo = Player.new.define_player_two

game = Game.new
game.continue_game