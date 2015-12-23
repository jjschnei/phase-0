// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: Number
// Output: A string of a number with commas added
// Steps:
// Declare a function and accept a number as an argument
// Convert the number to a string
// Reverse the string
// For each index, if index is divisible by 3, not 0, and string size is greater than 3, add a comma to the string after the index.
// Reverse the string again
// Return the string


// Initial Solution

function separateComma(num){


  var numString = num.toString()
  var revString = ""
  for (var i = numString.length - 1; i >= 0; i--){
    revString += numString [i];
  }
  var comString = ""
  for (var i = 0; i < revString.length; i++){
       if (i % 3 == 0 && i != 0 && revString.length > 3) {
         comString += "," + revString[i]
       }
       else{
          comString += revString[i]
       }
  }
  var finalString = ""
    for (var i = comString.length - 1; i >= 0; i--){
    finalString += comString [i];
  }
  return finalString
}

// Refactored Solution
function separateComma(num){
  var arrString = num.toString().split("").reverse()
  for (var i = 3; i < arrString.length; i += 4){
    arrString.splice(i,0,",")
  }
  return arrString.reverse().join("")
}



// Your Own Tests (OPTIONAL)
console.log(separateComma(5000000))
console.log(separateComma(5))



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//Logically, we approached it in a similar way to ruby.  The code and methods we used were all different.


// What did you learn about iterating over arrays in JavaScript?
// I learned the syntax to iterating over an array. We also learned to create a function to replace our reptitive iteration code.


// What was different about solving this problem in JavaScript?
//There are less buil-in methods in Javascript. This meant that we had to think harder on how to do it and then how to refactor it.

// What built-in methods did you find to incorporate in your refactored solution?
//We used split and join and splice.  We figured out that there were some good built-in methods for arrays so we turned the number into an array.