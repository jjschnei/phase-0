// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Score the winning penalty kick!
// Goals: To kick the soccer ball passed the keeper and into the net.
// Characters:  PK shooter, goalie
// Objects: Shooter, ball, goalie
// Functions: shoot left, shoot center, shoot right.

// Pseudocode
// Declare the shooter object.
// Give the object properties such as direction and goal.
// Add methods to shooter like shoot left, shoot center and shoot right properties.
// Declare a goalie object and give it properties of position and goal.
// Add methods to goalie to have it chose a direction (left, center, right)
// Check if the goalie and the ball is in the same position. If it is then it's a save, else it is a goal.

// Initial Code

var shooter = {
};

var keeper = {
};

var game = {
  goal: false,
};



function assignShooterDirection(){
  shooter.firstName = prompt("What's your name?");
  shooter.shotDirection = prompt("Pick a direction - right, left, or middle");
  console.log("The shooter kicks " + shooter.shotDirection + "!");
}


function makeSaveDirection(){
  keeper.saveDirection = declareKeeperDive();
  console.log("The keeper saves " + keeper.saveDirection + "!");
}

function declareKeeperDive(){
  var direction = Math.random();
  if(direction >= 0.666){
    return "right";
  }
  else if(direction <= 0.333){
    return "left";
  }
  else {
   return "middle";
  }
};

function declareWinner() {
  if(shooter.shotDirection === keeper.saveDirection) {
    return "Goalie";
  } else {
    return "Shooter";
  }
}

function printWinner() {
  console.log("The winner is: " + declareWinner())
}

assignShooterDirection();
makeSaveDirection();
printWinner();



// Refactored Code

var shooter = {
};

var keeper = {
};

var game = {
  goal: false,
};



function assignShooterDirection(){
  shooter.firstName = prompt("What's your name?");
  shooter.shotDirection = prompt("Pick a direction - right, left, or middle");
  console.log("The shooter kicks " + shooter.shotDirection + "!");
}


function makeSaveDirection(){
  keeper.saveDirection = declareKeeperDive();
  console.log("The keeper saves " + keeper.saveDirection + "!");
}

function declareKeeperDive(){
  var direction = Math.random();
  if(direction >= 0.666){
    return "right";
  }
  else if(direction <= 0.333){
    return "left";
  }
  else {
   return "middle";
  }
};

function declareWinner() {
  if(shooter.shotDirection === keeper.saveDirection) {
    console.log("The winner is: Goalie");
  } else {
    console.log("The winner is: Shooter");
  }
}

function runner() {
  assignShooterDirection();
  makeSaveDirection();
  declareWinner();
  return "You suck at coding";
}

runner();


// Reflection
// What was the most difficult part of this challenge?
  // understanding how functions and objects interact

// What did you learn about creating objects and functions that interact with one another?
  //Once you understand the syntax and logic, it's pretty straight forward.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  //I learned about Math and how to use runner functions.

// How can you access and manipulate properties of objects?
  //It's very similar to accessing Hashes. You can use either dot or bracket notation.