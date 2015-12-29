// JavaScript Olympics

// I paired Liam Mackey on this challenge.

// This challenge took me 1 hours.


// Warm Up


// // Bulk Up
function Olympian(name,event){
  this.name = name;
  this.event = event;
  this.win = function (){
    return this.name + " won the " + this.event;
  };
}

var sarah = new Olympian("Sarah Hughes", "Ladies Singles")
console.log(sarah.win());

// Jumble your words
function reverseString(string){
  var strArray = string.split("");
  var revArray = strArray.reverse();
  return revArray.join("");

};

var cat = "I am a cat"

console.log(reverseString(cat));



// 2,4,6,8
function evenNumbers(num){
  if (num % 2 == 0)
    return true
  else
    return false
};

var numArray = [1,2,3,4,5,6,7];

var evenArray = numArray.filter(evenNumbers);

console.log(evenArray);



function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};
// "We built this city"
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// This challenge helped me to solidify my syntax.  It also helped me to get a better understanding of the filter method and using a constructor funcction.

// What are constructor functions?
// A constructor function is similar to a Class in Ruby. A constructor function is very similar to javascript fuctions.  The difference is that a constructor function is called via the new operator.  Like a Class, Constructors create the blue print, not the object. You can create an instance of a construtor function.

// How are constructors different from Ruby classes (in your research)?
// JavaScript objects dont have a fromal class.  This means that there is no special syntax for defining how to create an instanec or define it's behaviour.