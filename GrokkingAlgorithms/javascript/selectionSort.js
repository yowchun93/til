// finding the smallest in an Array
function findSmallest(array) {
  // set the first element as the smallest 
  smallest = array[0]
  // then loop through the whole array, and compare 
  for ( var i in array ) {
    if(array[i] < smallest) {
      smallest = array[i];
    }
  }
  return smallest
}
// selectionSort
// remove element and put in new array
// array.splice return an Array 
function selectionSort(array){
  // create a new array to collect sorted integer
  newArray = []
  var length = array.length;
  // when when i use this , it fucks up 
  for (var i = 0; i < length; i++) {
    smallest = findSmallest(array);
    smallestIndex = array.indexOf(smallest);
    newArray.push(array.splice(smallestIndex,1)[0]);
  }
  return newArray;
}

console.log(selectionSort([5, 3, 6, 2, 10]))
console.log(selectionSort([3,4,5,6,7,2]));

