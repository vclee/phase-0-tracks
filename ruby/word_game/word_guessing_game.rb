#Pseudocode

#Create a game class
#the player1 chooses and enters a word for the player2 to guess
#blank spaces appear, corresponding to the length of mystery word
#the length of the mystery word determines the number of guesses allowed
  #if mystery word length is 1-4 letters long,
    #the player2 has 4 guesses
  #if mystery word length is 5-8 letters long,
    #the player2 has 7 guesses
  #if mystery word length is 9-12 letters long,
    #the player2 has 10 guesses
  #if mystery word is 12+ letters long,
    #the player2 has 15 guesses

  #repeated guesses do not count against the player2, only unique guesses count
#if player2 correctly guesses a letter in mystery word
  #the blank space corresponding to the location of the correct letter is replaced with the correct letter
#if player2 correctly guesses the mystery word before the allowed number of guesses
  #show congratulatory message
#if not, then
  #show game over message

class WordGuessingGame
  attr_reader :max_guesses, :blank_spaces

  def initialize(mystery_word)
    @mystery_word = mystery_word
    @max_guesses = calculate_turns(mystery_word)
    @blank_spaces = calculate_blanks(mystery_word)
  end

  def calculate_turns(mystery_word)
    length = mystery_word.length
    number_of_guesses = 0

    if length.between?(1, 4)
      number_of_guesses = 4
    elsif length.between?(5, 8)
      number_of_guesses = 7
    elsif length.between?(9, 12)
      number_of_guesses = 10
    elsif length > 12
      number_of_guesses = 15
    end

    number_of_guesses
  end

  def calculate_blanks(mystery_word)
    length = mystery_word.length
    blanks = ""
    length.times { blanks += "_ " }

    blanks
  end


  def play
    guesses = []
    while @max_guesses > 0
      puts "Guess a letter"
      guess = gets.chomp

      if guesses.include?(guess)
        next

      else
        guesses.push(guess)
        @mystery_word.each_char.with_index do |letter, i|
          if letter == guess
            @blank_spaces[i * 2] = letter
          end
        end

        if !@blank_spaces.include?("_")
          puts "YOU GUESSED THE WORD #{@mystery_word.upcase}! YOU WIN!"
          break
        end

        puts @blank_spaces
        @max_guesses -= 1
      end
    end
    puts "GAME OVER"
  end

end

game = WordGuessingGame.new("hello")
p game.play
