// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById("release-0").className += "done";




// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:


document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";

// Release 4:

document.getElementById("release-3").style.background = "#955251";


// Release 5:

var elements = document.getElementsByClassName("release-4");

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}


// Release 6:

var tmp = document.getElementById("hidden");
document.body.appendChild(tmp.content.cloneNode(true));


// Reflection:

// What did you learn about the DOM?
// -This is the first time I learned how to encorperate any JavaScript into the DOM.

// What are some useful methods to use to manipulate the DOM?
// -the #getElementById, #getElementsByClassName, and #getElementsByTagName were all helpful to manipulate the DOM.

