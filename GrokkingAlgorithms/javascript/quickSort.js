// https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort

// 1. choose the rightmost element in the array as pivot
// 2. partition the array into smaller than pivot
// and larger than pivot
// 3. after partitioning, perform the same on the array on the 
// left and on the right 
function quickSort(array) {
  var sortedArray = []
  if(array.length < 2 ) {
    return array
  }
  else {
    pivot = array[array.length - 1];
    less = partition(array, pivot).left;
    more = partition(array, pivot).right;
    return sortedArray.concat(quickSort(less), pivot , quickSort(more));
  }
}

// method to partition array, according to 
function partition(array, pivot) {
  leftArray = []
  rightArray = []
  array.forEach(function(element) {
    if(element < pivot) {
      leftArray.push(element)
    } else {
      rightArray.push(element)
    }
  })
  return {left: leftArray,right: rightArray};
}

console.log(partition([4,5,3,2,7],6))
console.log(quickSort([4,5,3,2,7,6]))



