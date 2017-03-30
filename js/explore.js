console.log("Hello world!");

// command line:
// node test.js

// Q2) pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello")
// Steps:
// 1) Declare a function which takes one string argument.
// 2) Split the string into individual letters in an array using .split("")
// 3) Reverse the items in the array using .reverse()
// 4 Join the reversed items in the array using .join("")
// 5 These can all be done separately, or chained together for efficiency.
// 6 Assign the function to a variable.
// 7 Call the function inside console.log(var) to print in terminal.


function reverseString(str) {
    return str.split("").reverse().join("");
}

var forward = 'hello';
var reverse = reverseString(forward);
var statement = 'The reverse of ' + forward + ' is ' + reverse + '.'

console.log(statement);
