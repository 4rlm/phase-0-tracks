// 7.3 Solo Challenge: Algorithm Practice
// Release 0: Find the Longest Phrase

// var words = ["long", "longer", "longest"];
//
// function lengther(array) {
//     for(var i = 0; i < array.length; i++){
//         console.log(array[i]);
//         console.log(array[i].length);
//     }
// }
//
// var word_length = lengther(words);
//
// console.log(word_length);




var words = ["long", "longer", "longest"];

var size = 0;
var longest_word = "";

function lengther(array) {
    for(var i = 0; i < array.length; i++){
        if(array[i].length > size){
            var size = array[i].length;
            longest_word = array[i];
        }
    }
}


word_length = lengther(words);
console.log(word_length);

console.log(size);
console.log(longest_word);









///////////////////////////////////////
// Release 1: Find a Key-Value Match





///////////////////////////////////////
// Release 2: Generate Random Test Data




///////////////////////////////////////
