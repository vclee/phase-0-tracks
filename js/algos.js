function findLongestWord(words) {
  var greatestLength = words[0];

  words.forEach(function(word, index) {
    if (word.length > greatestLength.length) {
      greatestLength = word;
    }
  });

  return greatestLength;
}

// DRIVER CODE *********
var longWords = ["apple", "cat", "Mississippi"];
console.log(findLongestWord(longWords));
