#Create game class
#Create an instance variable in initialize to hold a guessed word
#Create method that creates a placeholder - a string for "_ _ _ _"- depending on user inputted word
#Create method that counts guesses and takes in user guesses and prints
#the new letter in the word if right or tells the user no match and prints the 
#current guesses for them to try again

class Game
attr_reader :placeholder, :word, :letter


	def initialize(word)
		@word = word.split('')
		@placeholder = ""
		@letter = ''
	end

	def create_placeholder
		@placeholder = ""
		@word.length.times do 
			@placeholder += "-"
		end
		@placeholder.split('')
		p placeholder
	end

	def check_guesses(letter)
		@letter = letter
		p letter
		@word.split
		@word.each do |char|
			p char
			if letter == char
				char_idx = word.index(char)
				placeholder[char_index].replace(char)
			end
			p placeholder
		end
		
	end

end

p "Welcome to the word game! Player 1, please give a word"
word = gets.chomp
game = Game.new(word)
game.create_placeholder

p "Player 2, please guess a letter"
letter = gets.chomp
game.check_guesses(letter)






