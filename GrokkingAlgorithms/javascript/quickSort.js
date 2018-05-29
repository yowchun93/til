// https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort

// 1. choose the rightmost element in the array as pivot
// 2. partition the array into smaller than pivot
// and larger than pivot
// 3. after partitioning, perform the same on the array on the 
// left and on the right 

function quickSort(array) {
  if (array.length < 2 ) {
    return array;
  }
  pivot = array[array.length - 1];
  less = partition(array, pivot).left;
  more = partition(array, pivot).right;
  debugger
  return quickSort(less).concat(pivot, quickSort(more));
  // return sortedArray.concat(quickSort(less), pivot , quickSort(more));
}

// // method to partition array, according to 
function partition(array, pivot) {
  leftArray = []
  rightArray = []
  for(var i = 1; i < array.length; i++) {
    if(array[i] < pivot) {
      leftArray.push(array[i]);
    } else {
      rightArray.push(array[i]);
    }
  }
  return {left: leftArray,right: rightArray};
}


function quickSortBasic(array) {
  if (array.length < 2) {
    return array;
  }
  var pivot = array[0]
  var lesser = []
  var greater = []

  for(var i = 1; i < array.length; i++) {
    if(array[i] < pivot) {
      lesser.push(array[i]);
    } else {
      greater.push(array[i]);
    }
  }
  return quickSortBasic(lesser).concat(pivot, quickSortBasic(greater));
}

// console.log(partition([4,5,3,2,7],6))
console.log(quickSort([4,5,3,2,7,6]))
console.log(quickSortBasic([4,5,3,2,7,6]))


