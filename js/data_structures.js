var colors = ["red", "blue", "violet", "green"];
var names = ["Ed", "Patrick", "Fred", "Bob"];

function horses (horse_colors, horse_names) {
	var horses = {};

	for (var i = 0; i < colors.length; i++) {
		horses[names[i]] = colors[i];
	}

	return horses;
}
console.log(colors);
console.log(names);
colors.push("yellow");
names.push("Cindy");
console.log(colors);
console.log(names);
console.log(horses(colors, names));

function Car(model, color, installEngine) {
	this.model = model;
	this.color = color;
	this.installEngine = installEngine;

	this.startCar = function() {console.log("vrooooom!");};
}

console.log("Let's build a car ...");
var carOne = new Car("Ford", "red", true);
console.log(carOne);
carOne.startCar();
var carTwo = new Car("BMW", "black", true);
console.log(carTwo);
carTwo.startCar();
