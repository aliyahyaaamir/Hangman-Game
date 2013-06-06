require_relative 'hangman'

class HangmanRunning

	def self.start_game
		game = Hangman.new
		guesses = []
		chances = 8
		#puzzle = game.board[0] 
		while (((game.puzzle).include? "_") && (game.chances != 0))
			puts 'Guess the letters for the word below'
			puts "         #{game.puzzle}"	
			puts "Incorrect Guesses -> #{game.guesses.join(' ')}"
			puts "No. of Chances left -> #{game.chances}"
			letter = gets.chomp
			if (!((game.guesses).include? letter)) && (letter.length == 1)
				game.evaluate(letter)
			else
				puts "Entered an invalid letter!"
			end
			#info = game.board
			#puzzle = info[0]
			#guesses = info[1]
			#chances = info[2]
		end
		if (game.puzzle).include? "_"
			puts "Sorry you've lost the game.....Try again maybe?"
		else
			puts "Congratulations! You've won!!"
		end
	end



end

HangmanRunning.start_game
