class Hangman
	attr_accessor :chances, :word, :puzzle, :guesses


	def initialize 
		@chances = 8
		@word = random_word
		@puzzle = "_" * @word.length
		@guesses = []
	end

	def show_letter(letter)
		index = -1
		@word.each_char do |c|
			if c == letter
				index = @word.index(c, (index + 1)) if index != (@word.length - 1)
				@puzzle[index] = c 
			end
		end
	end

	def random_word
		word_list = ['four', 'gratification', 'assignment', 'pass', 'gentle']
		item = word_list[rand(word_list.length)]
		return item
	end

	def evaluate(letter)
		if  !@word.include? letter
			@chances -= 1
			@guesses << letter
		else 

			show_letter(letter)
		
		end 
	end
end
