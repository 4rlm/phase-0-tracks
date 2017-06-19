console.log("The script is running!");

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }
//
// var photo = document.getElementById("lizard-photo");
// photo.addEventListener("click", addPinkBorder);

////////////
var els = document.getElementsByTagName('em');
var el0 = els[0]
el0.style.border = "2px solid red";

// Event Driven Programming
function addImageBorder(event) {
  console.log("Click happened!  Here's the click event.");
  console.log(event);
  var photo = document.getElementById("lizard-photo");
  event.target.style.border = "5px solid blue";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addImageBorder);

////////////
var mainDiv = document.getElementById("about-my-pet");
var mainDiv0 = mainDiv.children[0];
mainDiv0.style.border = "5px solid red";


mainDiv.children[1].style.border = "3px solid green";
mainDiv.children[1].style.border = "3px solid green";

mainDiv.children[1].style.background = "yellow";

mainDiv.children[2].style.border = "3px solid black";
mainDiv.children[2].style.background = "green";

mainDiv.children[3].style.border = "3px solid yellow";
mainDiv.children[3].style.background = "blue";

mainDiv.children[4].style.border = "3px solid pink";
mainDiv.children[4].style.background = "red";

// photo.parentElement
// photo.firstElementChild
// photo.children
