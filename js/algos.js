// 7.3 Solo Challenge: Algorithm Practice
// Release 0: Find the Longest Phrase - Moved to bottom for interaction with Release 2.

///////////////////////////////////////
// Release 1: Find a Key-Value Match

names = [{name: "Tamir", age: 55}, {name: "Tamir", age: 54}];

// Compares all names in each obj w/ name[0], then does same for age[0] looking for match.
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

// Creates random 10-char string.
function rand_stringer() {
  var string = "";
  var alpha = "abcdefghijklmnopqrstuvwxyz";

  // Generates random num for string char length.
  char_length = Math.floor((Math.random() * 10) + 1);

  for( var i=0; i < char_length; i++ )
  // Generates random num for choosing which letter in alpha string.
    string += alpha.charAt(Math.floor(Math.random() * alpha.length));
    return string;
}

// Pushes random 10-char string from rand_stringer() to words array.
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
