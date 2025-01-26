class Game

	def initialize
	  @game_on_flag = 0
	  @coord_array = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"]]
	  @player_turn = 0
	end

	def start_game
	end

	def continue_game
		puts "Enter the position you want to play in:"
		position_in = gets.chomp
		puts "Received input: " + position_in
		@coord_array.each do |pos|
			if pos == position_in
				if player_turn == 0
					pos = X
				else
					pos = 0
				end
			end
		end
	end


end