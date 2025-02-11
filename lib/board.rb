class Board

	def initialize
	  @coord_array = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"]]
	  @coord_array.each do |pos_coord|
	  	puts pos_coord.join("|")
	  end
	end

	def show_board()
		@coord_array.each do |sub_coord|
			puts sub_coord.join("|")
		end
	end

	def check_input(playerInput,playerTurn)
		yCount = 0
	  	for y in @coord_array
			xCount = 0
	  		for x in y
	  			if playerInput == x
	  				if playerTurn == 0
	  					@coord_array[yCount][xCount] = "X"
	  				elsif playerTurn == 1
	  					@coord_array[yCount][xCount] = "O"
	  				end
	  			end
	  			xCount += 1
	  		end
	  		yCount += 1
	  	end
	end

	def check_win
		for y in @coord_array
			if y.join == "XXX" || "OOO"
				puts "Game Over"
			end
		end
	end



end