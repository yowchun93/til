// first of all implement a Graph 
// also need to prevent infinite loop
function personIsSeller(person) {
  return person[person.length - 1] == "m"
}

function breadthFirstSearch(name) {
  // Graph implementation 
  var graph = {}
  graph["you"] = ["alice", "bob", "claire"];
  graph["bob"] = ["anuj", "peggy"]
  graph["alice"] = ["peggy"]
  graph["claire"] = ["thom", "jonny"]
  graph["anuj"] = []
  graph["peggy"] = []
  graph["thom"] = []
  graph["jonny"] = []
  
  var searchQueue = []
  searchQueue = searchQueue.concat(graph[name])
  var searched = []
  while(searchQueue.length > 0) {
    person = searchQueue.shift();
    if (!searched.includes(person)){
      if (personIsSeller(person)) {
        console.log(person + ' ' +'is a mango seller');
        return true;
      } else {
        searchQueue = searchQueue.concat(graph[person]);
        searched.concat(person);
      }
    }
  }
  return false;
}

console.log(breadthFirstSearch("you"));