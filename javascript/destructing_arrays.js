
// variable assignment
let carIds = [1, 2, 5];
let [car1, car2, car3 ] = carIds;

console.log(car1, car2, car3);

// destructing arrays using rest parameter
let carIds = [1, 2, 5];
let car1, remainingCars;

[car1, ...remainingCars ] = carIds;
console.log(car1, remainingCars);


// ignoring first element in array
[, ...remainingCars] = carIds;