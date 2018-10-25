// spread syntax
function startCars(car1, car2, car3) {
  console.log(car1, car2, car3);
}

let carIds = [100, 300, 500];
startCars(...carIds);

let carCodes = 'abc';
startCards(...carCodes);
// a b c


function startCards(car1, car2, car3, ...rest) {
  console.log(rest);
}

let carIds = [1, 2, 3, 4, 5, 6];
startCars(...carIds);