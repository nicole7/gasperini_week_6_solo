#Create game class
#Create an instance variable in initialize to hold a guessed word
#Create method that creates a placeholder - a string for "_ _ _ _"- depending on user inputted word
#Create method that counts guesses and takes in user guesses and prints
#the new letter in the word if right or tells the user no match and prints the 
#current guesses for them to try again

class Game

	def initialize(word)
		@word = word
	end

	def create_placeholder
	end

	def check_guesses(guesses)
	end

end

p "Welcome to the word game! Player 1, please give a word"
word = gets.chomp
game = Game.new(word)

p "Player 2, please guess a letter"
letter = gets.chomp






