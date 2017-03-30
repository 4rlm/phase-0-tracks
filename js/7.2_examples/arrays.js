// declaring an array in JavaScript is similar to Ruby
var kittens = ["Buster", "Princess Fluffypaws", "Minxy"];

// you can access items by index
console.log(kittens[0]);

// you can search for something with indexOf
console.log("Minxy is at index " + kittens.indexOf("Minxy"));

// you can add an item with .push
kittens.push("Mr. Whiskers");

// an array knows its length, which we can use in a for loop
console.log("The length of the array is " + kittens.length);

// here's how we'd loop through each one, using i as an index
for (var i = 0; i < kittens.length; i++) {
	console.log(kittens[i]);
}

// removing an item from an array is a little weird ...
// here we start at index 2 (first argument) and
// remove 1 item (second argument):
kittens.splice(2, 1);

// That removed Minxy:
console.log(kittens);
