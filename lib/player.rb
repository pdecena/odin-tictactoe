class Player
	def define_player_one
		puts "Enter Player One's name:"
		playerOneName = gets.chomp
		puts playerOneName + " will play as X"
	end

	def define_player_two
		puts "Enter Player Two's name:"
		playerTwoName = gets.chomp
		puts playerTwoName + " will play as O"
	end


end