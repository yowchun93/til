// rest parameters in JS 

// prints out all the ids in the car
function sendCars(...allCarIds) {
  allCarIds.forEach( id => console.log(id))
}

sendCars(100, 200, 555);

// rest parameters must be the last element in the parameter
// returns error
function sendCars(...carIds, day) {
  carIds.forEach( id => console.log(id))
}