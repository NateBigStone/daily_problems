// # Write a method that prints out the numbers 1 to 1000 that are divisible by 3.
// def print_numbers_divisible_by_three
//   index = 1
//   while index <= 1000
//     if index % 3 == 0
//       puts index
//     end
//     index += 1
//   end
// end
// print_numbers_divisible_by_three
function printNumbersDivisibleByThree() {
  var index = 1;
  while (index <= 1000) {
    if (index % 3 === 0) {
      console.log(index);
    }
    index += 1;
  }
}
printNumbersDivisibleByThree();


// # Write a method that accepts an array of strings and prints out every other string.
// def print_every_other_item(strings)
//   index = 0
//   strings.each do |string|
//     if index % 2 == 0
//       puts string
//     end
//     index += 1
//   end
// end
// print_every_other_item(["a", "b", "c", "d", "e"])
function printEveryOtherItem(strings) {
  var index = 0;
  strings.forEach(function(string) {
    if (index % 2 === 0) {
      console.log(string);
    }
    index += 1;
  });
}
printEveryOtherItem(["a", "b", "c", "d", "e"]);


// # Write a method that accepts an array of numbers and returns the sum.
// def compute_sum(numbers)
//   sum = 0
//   numbers.each do |number|
//     sum += number
//   end
//   return sum
// end
// puts compute_sum([2, 4, 5])
function computeSum(numbers) {
  var sum = 0;
  numbers.forEach(function(number) {
    sum += number;
  });
  return sum;
}
console.log(computeSum([2, 4, 5]));

// # Start with the hash: city_populations = {chi: 2700000}
// # Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
// # The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}
// city_populations = {chi: 2700000}
// city_populations[:nyc] = 8400000
// city_populations[:sf] = 800000
// p city_populations
var cityPopulations = {chi: 2700000};
cityPopulations["nyc"] = 8400000;
cityPopulations.sf = 800000;  // same as cityPopulations["sf"]
console.log(cityPopulations);



// # Write a method that prints out every number from 1 to 100. 

function everyNumberFromOneToOneHundred() {
  for (var i = 1; i <= 100; i++) {
    console.log(i);
  }
}
everyNumberFromOneToOneHundred();


// # Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

function everyNumberFromOneToOneHundredOdd() {
  for (var i = 1; i <= 100; i++) {
    if (i % 2 !== 0) {
      console.log(i);
    }
  }
}
everyNumberFromOneToOneHundredOdd();


// # Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

function countTheFiveFives(array) {
  var count = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[i] === 55) {
      count ++;
    }
  }
  return count;
}
var fiftYFiveArray = [22,33,44,55,66,77,88,99,111,55];
countTheFiveFives(fiftYFiveArray);


// # Write a method that accepts an array of strings and returns a new array that has the string “awesomesauce” inserted between every string. 
// # For example, if the initial array is [“a”, “b”, “c”, “d”, “e”], then the returned array should be [“a”, “awesomesauce”, “b”,  “awesomesauce”, “c”,  “awesomesauce”, “d”,  “awesomesauce”, “e”].

function awesomesauce(array) {
  var awesomeArray = [array[0]];
  for (var i = 1; i < array.length; i++) {
    awesomeArray.push("awesomesauce",array[i]);
  }
  return awesomeArray;
}
awesomesauce(["a","b","c","d","e","f"]);


// # Start with the hash: item_amounts = {chair: 5, table: 2}
// # Someone just bought two chairs. Change the hash such that the chair amount is 3.
// # The final result should be: {chair: 3, table: 2}

var itemAmounts = {"chair": 5, "table": 2};
itemAmounts.chair -= 2;
console.log(itemAmounts);


// # Start with the hash: item_amounts = {chair: 5, table: 2}
// # You received 7 desks to sell. Change the hash to include desks.
// # The final result should be: {chair: 5, table: 2, desk: 7}

var itemAmountsTwo = {"chair": 5, "table": 2};
itemAmountsTwo.desk = 7;
console.log(itemAmountsTwo);

// # Write a method that accepts a number and returns its factorial.
// # For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

var sum = 1;
function factorial(num) {
  sum = sum * num;
  num --; 
  if (num !== 0) {
    factorial(num);
  }
  return sum;
}
factorial(5);

// # Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array. 
// # For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

var arrayOne = [1, 5, 10];
var arrayTwo = [100, 500, 1000];
function sumFunct(arr1,arr2) {
  var combinedArray = [];
  for(var i = 0; i < arr1.length; i++) {
    for(var j = 0; j < arr2.length; j++) {
      combinedArray.push(arr1[i] + arr2[j]);
    }
  }
  return combinedArray;
}
sumFunct(arrayOne,arrayTwo);


