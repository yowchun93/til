// let and var 

// var , carId will return undefined
console.log(carId)
var carId = 42;

// let cardID will return error 
console.log(carId)
let carId = 42;

// var is not bounded in block scope
if (true) {
  var carId = 100;
}
console.log(carId) // 100

if (true) {
  let carId = 100;
}
console.log(carId) // carId is not defined