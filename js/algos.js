// 7.3 Solo Challenge: Algorithm Practice
// Release 0: Find the Longest Phrase - Moved to bottom for interaction with Release 2.
// Pseudocode: Create array of words/strings to iterate over to identify longest string by checking the length of each string in the array.  If the string's length is longer than the string checked before it, then it will become the longest_word.  Repeat until end of array.  Add length of longest_word to size and return both.


///////////////////////////////////////
// Release 1: Find a Key-Value Match
// Pseudocode: Create array with two objects consisting of name and age.  Iterate through the array and compare all names in each obj w/ name[0], then does same for age[0] looking for match.

names = [{name: "Tamir", age: 55}, {name: "Tamir", age: 54}];

function compareObj(array) {
  for(var i=array.length-1; i<array.length; i++){
    if(array[i].name == array[0].name) {
      console.log("Name Match: " + array[i].name);
    }else if (array[i].age == array[0].age) {
      console.log("Age Match: " + array[i].age);
    }else {
      console.log("No Name or Age Match");
    }
  }
}
compareObj(names);

///////////////////////////////////////
// Release 2: Generate Random Test Data
// Pseudocode: Create random 10-char string, then generate random num for string char length, generate random num for choosing which letter in alpha string, push random 10-char string from rand_stringer() to words array.

function rand_stringer() {
  var string = "";
  var alpha = "abcdefghijklmnopqrstuvwxyz";

  char_length = Math.floor((Math.random() * 10) + 1);

  for( var i=0; i < char_length; i++ )
    string += alpha.charAt(Math.floor(Math.random() * alpha.length));
    return string;
}

function rand_str_pusher(num){
  var words = []

  for(var i=0; i < num; i++) {
    words.push(rand_stringer());
  }
  return words;
}

// Compares all strings in words array and prints the longest.
function longest_worder(array) {
  var size = 0;
  var longest_word = "";
  for(var i = 0; i < array.length; i++){
    if(array[i].length > size){
      var size = array[i].length;
      longest_word = array[i];
    }
  }
  // Creates and prints specified number of 10-char strings in array.
  console.log("The longest string is " + longest_word + " with a length of " + size + ".");
}
longest_worder(rand_str_pusher(10))


///////////////////////////////////////
