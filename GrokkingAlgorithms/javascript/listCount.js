// Recursive implementation of counting numbers 

// base case 
function listCount(arr) {
  if(arr[0] === undefined) {
    return 0;
  } else {
    return listCount(arr.slice(1)) + 1
  }
}
console.log(listCount([5,4,3,2,1]));