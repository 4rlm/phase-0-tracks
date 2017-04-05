///////////////////////////////
// 7.2 Release 0

var Names = ["Buddy", "Dakota", "Magic", "Rocky"];
var Colors = ["black", "brown", "tan", "white"];

function itemAdder(item, array) {
    return array.push(item);
}

var NewName = "Lucky";
itemAdder(NewName, Names);

var NewColor = "beige";
itemAdder(NewColor, Colors);

// console.log(Names);
// console.log(Colors);

///////////////////////////////
// 7.2 Release 1

var names = ["Buddy", "Dakota", "Magic", "Rocky"]
var colors = ["black", "brown", "tan", "white"]

var horses = {};

for(var i = 0; i < names.length; i++){
    horses[names[i]] = colors[i];
}

// console.log(horses);


///////////////////////////////
// 7.2 Release 2

var brands = ["Ford", "Chrysler", "Toyota", "Kia"];
var types = ["SUV", "convertible", "EV", "compact"];
var colors = ["black", "red", "white", "gray"];
var prices = ["$15,000", "$17,000", "$21,000", "$14,000"];

function Car(brand, type, color, price) {this.brand = brand; this.type = type; this.color = color; this.price = price};

cars = [];

for (var i = 0; i < brands.length; i++){
    var car1 = new Car(brands[i], types[i], colors[i], prices[i]);
    cars.push(car1);
}

console.log(cars);

///////////////////////////////
