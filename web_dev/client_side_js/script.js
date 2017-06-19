// console.log("The script is running!");

var intro = document.getElementsByClassName("greeting");

intro.style.border = "3px solid red";

document.getElementById("demo").innerHTML = "Hello World!";


// Event Driven Programming
function addBorder(event) {
  console.log("Click happened!  Here's the click event.");
  console.log(event);
  var new_changes = document.getElementById("changes");
  event.target.style.border = "5px solid blue";
}

var new_changes = document.getElementById("changes");
new_changes.addEventListener("click", addBorder);
