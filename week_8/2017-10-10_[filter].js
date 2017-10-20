//Read about the JavaScript `filter` method. Then refactor the code below using `filter`.
// var numbers = [1, 2, 4, 2];
// var evenNumbers = [];
// for (var i = 0; i < numbers.length; i++) {
//   if (numbers[i] % 2 === 0) {
//     evenNumbers.push(numbers[i]);
//   }
// }
// console.log(evenNumbers);
const numbers = [1, 2, 4, 2];
let evenNumbers = numbers.filter(number => number % 2 === 0);
console.log(evenNumbers);