// HASHLIKE (KEY-VALUE) BEHAVIOR

// Objects in JavaScript behave as key-value data structures.

// Their keys can be strings, integers, or variable-like names
// known as identifier names.

// Their keys are often referred to as properties.

// Let's declare an object:
var dog = {name: 'Spot', 'age': 3, isGoodDog: true};

// Object values can be accessed with bracket notation ...
console.log("The dog's name is " + dog['name'] + ".");

// or dot notation ...
console.log("The dog's name is " + dog.age + ".");

// Notice the above access worked regardless of whether
// the original key was a string or a variable-like name!

// Bracket notation is handy for using variables
// instead of literal strings or identifier names
// to access information:
var propertyName = 'name';
console.log(dog[propertyName]);

// You can add key-value pairs anytime using two syntax styles.
// Here's bracket notation:
dog['weight'] = 14;
// Here's dot notation:
dog.adopted = false; // :(

// Dot notation is often preferred for its simplicity, but won't work
// for keys that have spaces in them.

// You can update values anytime as well:
dog.weight = 13;
dog['adopted'] = true; // aww yay! :D
