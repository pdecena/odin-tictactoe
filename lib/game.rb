class Game

	@game_on_flag = 0
	@coord_array = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"]]

	def init_game
	end

	def play_game(coord_array,game_on_flag,player_turn)
		puts "Enter the position you want to play in:"
		position_in = gets.chomp
		puts "Received input: " + position_in
		coord_array.each do |pos|
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