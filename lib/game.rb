class Game

	def initialize
	 	@game_on_flag = 0
	 	@player_turn = 0
	 	@board = Board.new
	end

	def continue_game
		while @game_on_flag == 0
			if @player_turn == 0
				currentPlayer = "Player 1"
			elsif @player_turn == 1
				currentPlayer = "Player 2"
			end
			puts "#{currentPlayer}, enter the position you want to play in:"
			position_in = gets.chomp
			puts "Received input: " + position_in
			@board.check_input(position_in, @player_turn)
			@board.check_win
			@board.show_board
			if @player_turn == 0
				@player_turn = 1
			elsif @player_turn == 1
				@player_turn = 0
			end
		end
	end


end