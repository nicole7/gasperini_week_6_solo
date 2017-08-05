require_relative 'game'

describe Game do 
	let(:game) {Game.new("bacon")}

	it "creates a placeholder" do
		expect(game.create_placeholder).to eq "-----"
	end

	it "checks the guesses" do
		game.check_gusesses("b")
		expect(game.check_guesses).to eq "b----"
	end

end
	
