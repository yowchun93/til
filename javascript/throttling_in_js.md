# Throttling in JS

# https://www.telerik.com/blogs/debouncing-and-throttling-in-javascript

```javascript
// Throttling is a technique in which, no matter how many times the user fires the event, the attached function will be executed only once in a given time interval.


// lazyLoad will run every 500 milisecond and not on every scroll
document.addEventListener("scroll", throttle(lazyLoad, 500));

// does this even work??
const throttle = (func, wait) => {
 let time = Date.now();

 return () => {
    if ((time + wait - Date.now()) < 0) {
      func();
      time = Date.now();
    }
  }
}

```