#Create game class
#Create an instance variable in initialize to hold a guessed word
#Create method that creates a placeholder - a string for "_ _ _ _"- depending on user inputted word
#Create method that counts guesses and takes in user guesses and prints
#the new letter in the word if right or tells the user no match and prints the 
#current guesses for them to try again

class Game
attr_reader :placeholder, :word, :letter


	def initialize(word)
		@word = word.downcase.split('')
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
		@word.each do |char|
			if letter == char
				#char_idx will numerical index of word at the 
				#matching letter 
				char_idx = word.index(char)
				#placeholder at that numerical index equals 
				#that char(letter) from word
				placeholder[char_idx] = char

			end
			
		end
		#return this placeholder
		p placeholder
	end

end

p "Welcome to the word game! Player 1, please give a word"
word = gets.chomp
game = Game.new(word)
game.create_placeholder

index = 0
while index < word.length

	p "Player 2, please guess a letter. You only get #{word.length} chances"
	letter = gets.chomp
	placeholder = game.check_guesses(letter)
	final_placeholder = placeholder

	index += 1
end

if !placeholder.include?("-")
	p "Congrats! You got all guesses right!"
else
	p "Yikes, don't quit your day job!"
end






