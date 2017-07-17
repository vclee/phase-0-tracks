require_relative 'word_guessing_game'

describe WordGuessingGame do
  let (:game) { WordGuessingGame.new("cat") }

  it "converts mystery word to blanks" do
    expect(game.calculate_blanks("cat")).to eq "_ _ _ "
  end

  it "calculates number of turns based on length of word" do
    expect(game.calculate_turns("cat")).to eq 4
  end
end
