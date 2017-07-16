#Pseudocode

#Create a game class
#the player1 chooses and enters a word for the player2 to guess
#blank spaces appear, corresponding to the length of mystery word
#the length of the mystery word determines the number of guesses allowed
  #if mystery word length is 1-4 letters long,
    #the player2 has 4 guesses
  #if mystery word length is 5-8 letters long,
    #the player2 has 7 guesses
  #if mystery word length is 8-11 letters long,
    #the player2 has 10 guesses
  #if mystery word is 11+ letters long,
    #the player2 has 15 guesses

  #repeated guesses do not count against the player2, only unique guesses count
#if player2 correctly guesses a letter in mystery word
  #the blank space corresponding to the location of the correct letter is replaced with the correct letter
#if player2 correctly guesses the mystery word before the allowed number of guesses
  #show congratulatory message
#if not, then
  #show game over message
