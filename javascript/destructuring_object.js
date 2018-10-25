// destructuring objects 

let car = { id: 5000, style: 'convertible' };
let { id, style } = car;

( {id, style } = car );
console.log(id, style); // 5000 convertible

