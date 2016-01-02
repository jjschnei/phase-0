// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var userInput = prompt("Give me a year, and I'll give you my age in that year");
var myAge = (userInput - 1984)
alert(myAge);

var favoriteFood = prompt('What\'s your fav food?');
alert("Hey, " + favoriteFood + " is my favorite food too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var counter = "#"
while (counter.length < 8){
    console.log(counter);
    counter += "#"
}


// Functions

// Complete the `minimum` exercise.

function min(x, y) {
  return (Math.min(x, y))
}

console.log(min(0, 10));
console.log(min(0, -10));



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["I am 31", "I love burritos, Thai food, and sushi.", "I hate bannans."]
console.log(me.join(" "))

