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


// QUESTONS ANSWERED IN-LINE BELOW:
// ·       Introduction (Links to an external site.)
// o   Did you learn anything new about JavaScript or programming in general?
// Yes, I learned about the history of JavaScript and early programming.
// o   Are there any concepts you feel uncomfortable with?
// I’m confused about the different javascript environments. Node vs. Browser?
// ·       Ch. 1: Values, Types, and Operators (Links to an external site.)
// o   Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// In both, basic arithmetic is done with the same syntax. For example, 2 * 2.  They also both follow the same order of operations:  PEMDAS.  Strings are also written the same – they both use either single or double quote marks.
// They use different commands to print to the console. JavaScript uses console.log(), while Ruby uses print or puts. JavaScript uses undefined or null for undefined values.  Ruby uses nil. Another difference is that in JavaScript console.log(false == 0) returns true, while in Ruby it returns false. This is due to JaveScript type conversion.



// Ch. 2: Program Structure (Links to an external site.)

// o   What is an expression?
// A fragment of code that produces a value is called an expression
// o   What is the purpose of semicolons in JavaScript? Are they always required?
// A semicolon tells JavaScript that it has reached the end of a statement. No, they are not always required.
// o   What causes a variable to return undefined?
// When you try to access a variable that is empty you get undefined.
// o   What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// It’s an expression that retrieves the log property from the value held by the console variable. It’s similar to puts or print in Ruby.
// o   Describe while and for loops
// A while loop executes a block as long as it evaluates to true – it’s best used when you don’t know exactly how many times you want to loop. A for loop loops a set number of times.
// o   What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Though the syntax is slightly different, conditional statements follow the same logic in both languages.
// o   Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// ·       Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
// o   What are the differences between local and global variables in JavaScript?
// Variables declared inside a function are local, while variables declared outside a function are called global. Global variables can be referenced inside a function.
// o   When should you use functions?
// When you need to run the same code many times.  They also allow you to group values so you can build more complex structures.
// o   What is a function declaration?
// It is a slightly shorter way to say “var square = function(x)”.  You can write it this way:  function square(x)
// o   Complete the minimum exercise in the eloquent.js file.

// ·       Ch. 4: Data Structures: Objects and Arrays (Links to an external site.)
// o   Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
// §  What is the difference between using a dot and a bracket to look up a property? Ex. array.max vsarray["max"]
// When using a dot, the part after the dot must be a valid variable name, and it directly names the property. When using square brackets, the expression between the brackets is evaluated to get the property name. Whereas value.x fetches the property of value named “x”, value[x] tries to evaluate the expression x and uses the result as the property name.

// §  Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// §  What is a JavaScript object with a name and value property similar to in Ruby?
// .length works similarly in both JavaScript and Ruby.


