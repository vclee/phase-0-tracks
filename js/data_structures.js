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
