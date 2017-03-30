var Names = ["Buddy", "Dakota", "Magic", "Rocky"]
var Colors = ["black", "brown", "tan", "white"]

function itemAdder(item, array) {
    return array.push(item);
}

var NewName = "Lucky"
itemAdder(NewName, Names)

var NewColor = "beige"
itemAdder(NewColor, Colors)

console.log(Names)
console.log(Colors)
