// Implementing Sum in a recursive manner 
function iterativeSum(array) {
  total = 0
  array.forEach(function(element){
    total += element;
  })
  return total;
}

// simplest case is when the array length is 0
// i can reduce the array
function recursiveSum(array) {
  if(array.length === 0 ) {
    return 0
  }
  else 
  {
    return array[0] + recursiveSum(array.slice(1))
  }
}
console.log(iterativeSum([5,4,3,2,1]))
console.log(recursiveSum([5,4,3,2,1]))
