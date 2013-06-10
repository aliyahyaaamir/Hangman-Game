require "test/unit"
require "./hangman"

class Hangman_tester < Test::Unit::TestCase

	def setup
		@hangman = Hangman.new
		@hangman.word = "hangman"
		@word_list = ['four', 'gratification', 'assignment', 'pass', 'gentle']

	end

	def test_initialize
		assert_equal 8,@hangman.chances 
		assert_equal [],@hangman.guesses
		assert @hangman.puzzle.include? '_'

	end

	def test_show_letter

		@hangman.show_letter("h")
		assert @hangman.puzzle.include? "h"
	end

	def test_random_word

		assert @word_list.include? @hangman.random_word

	end

	def test_evaluate
		@hangman.evaluate("l")
		assert_equal @hangman.guesses.length, 1
		assert @hangman.guesses.include? "l"
 
	end

end