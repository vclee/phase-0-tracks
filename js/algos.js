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

// DRIVER CODE *********
// var longWords = ["apple", "cat", "Mississippi"];
// console.log(findLongestWord(longWords));
console.log(findKeyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(findKeyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
