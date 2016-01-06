/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/
/*
Gradebook from Names and Scores
I worked on this challenge with David Louie
This challenge took me 1.5 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
// pseudocode
/*
create open object gradebook
make each student name in students array a property of gradebook
assign each the value of a new object
give each student property its own test scores
assign respective students their grades from scores array
assign addScore property to gradebook
addscore accepts name and score as arguments and adds scores to student objects
testScore is a property of each student
addscore pushes scores to values of testScore
create getAverage property in gradebook
create average function that accepts an array of integers and returns the average
getAverage accepts a name and returns the student's score using the average function
*/
// __________________________________________
// Write your code below.
// var gradebook = {
// //   Joseph: {},
// //   Susan: {},
// //   William: {},
// //   Elizabeth: {},
// };

// gradebook["Joseph"] = {};
// gradebook["Susan"] = {};
// gradebook["William"] = {};
// gradebook["Elizabeth"] = {};
// gradebook["Joseph"]["testScores"] = scores[0];
// gradebook["Susan"]["testScores"] = scores[1];
// gradebook["William"]["testScores"] = scores[2];
// gradebook["Elizabeth"]["testScores"] = scores[3];

// gradebook["addScore"] = function(name, score){
//     gradebook[name]["testScores"].push(score);
//   }

// gradebook["getAverage"] = function(name){
//     return average(gradebook[name]["testScores"]);
// }

// function average(array){
//   var sum = 0;
//   for(var i = 0; i < array.length; i++){
//     sum += array[i];
//    }
//   var result = sum / array.length;
//   return result;
// }



// __________________________________________
// Refactored Solution

var gradebook = {};

for(var i = 0; i < students.length; i++){
  gradebook[students[i]] = {"testScores": scores[i]};
}

gradebook["addScore"] = function(name, score){
    gradebook[name]["testScores"].push(score);
  }

gradebook["getAverage"] = function(name){
    return average(gradebook[name]["testScores"]);
}

function average(array){
  return array.reduce(function(a, b){return a+b})/array.length;
}

// __________________________________________
// Reflect

// Getting the syntax right was difficult.   We logically understood what needed to be done, but really struggled getting it right. I need to re-read the article. It’s important to know when to use dot notation versus brackets.

// In our refactored solution, we used a for loop to iterate through the given variables to add them to the object.

// I learned about reduce.  It sums an array.  This helped us shorten and simplify our average function.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
// Test Code:  Do not alter code below this line.
function assert(test, message, test_number) {
if (!test) {
console.log(test_number + "false");
throw "ERROR: " + message;
  }
console.log(test_number + "true");
return true;
}
assert(
  (gradebook instanceof Object),
"The value of gradebook should be an Object.\n",
"1. "
)
assert(
  (gradebook["Elizabeth"] instanceof Object),
"gradebook's Elizabeth property should be an object.",
"2. "
)
assert(
  (gradebook.William.testScores === scores[2]),
"William's testScores should equal the third element in scores.",
"3. "
)
assert(
  (gradebook.addScore instanceof Function),
"The value of gradebook's addScore property should be a Function.",
"4. "
)
gradebook.addScore("Susan", 80)
assert(
  (gradebook.Susan.testScores.length === 5
&& gradebook.Susan.testScores[4] === 80),
"Susan's testScores should have a new score of 80 added to the end.",
"5. "
)
assert(
  (gradebook.getAverage instanceof Function),
"The value of gradebook's getAverage property should be a Function.",
"6. "
)
assert(
  (average instanceof Function),
"The value of average should be a Function.\n",
"7. "
)
assert(
average([1, 2, 3]) === 2,
"average should return the average of the elements in the array argument.\n",
"8. "
)
assert(
  (gradebook.getAverage("Joseph") === 80),
"gradebook's getAverage should return 80 if passed 'Joseph'.",
"9. "
)