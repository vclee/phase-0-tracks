function findLongestWord(words) {
  var greatestLength = words[0];

  words.forEach(function(word, index) {
    if (word.length > greatestLength.length) {
      greatestLength = word;
    }
  });

  return greatestLength;
}

function findKeyValueMatch(obj1, obj2) {
  for (var key in obj1) {
    for (var key in obj2) {
      if (obj1[key] === obj2[key]) {
        return true;
      }
    }
  }

  return false;
}

function generateRandomWords(numberOfWords) {
  var randomWords = [];
  var str = "";
  var characters = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  for (var i = 0; i < numberOfWords; i++) {
    var randomLength = Math.floor(Math.random() * (11 - 1) + 1);

    for (var j = 0; j < randomLength; j++) {
      str += characters[Math.floor(Math.random() * characters.length)];
    }

    randomWords.push(str);
  }

  return randomWords;
}


// DRIVER CODE *********
// var longWords = ["apple", "cat", "Mississippi"];
// console.log(findLongestWord(longWords));
// findKeyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// findKeyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
console.log(generateRandomWords(4))
