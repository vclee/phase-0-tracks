// PSEUDOCODE

// - Take the word that needs to be reversed
// - Look at each letter, starting from the last letter going backwards
// - Make the first letter looked at (last letter) as first letter of a new word
// - Print the new word

var reverse = function(word) {
  reversedWord = "";

  for (var i = word.length - 1; i >= 0; i--) {
    currentLetter = word[i];

    reversedWord += currentLetter;
  }

  return reversedWord;
}

// DRIVER CODE ******

if (1 === 1) {
  console.log(reverse("foobar"));
}
