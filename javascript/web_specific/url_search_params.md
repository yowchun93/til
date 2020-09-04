# Javascript's object spread operator

Javascript's browser API has a very handy method to
handle / manipulate incoming query strings.

```javascript
  // search_params = "?schedule_filter%5Bselected_date%5D=2020-09-07"
  const searchParams = new URLSearchParams(window.location.search)
  searchParams.set("foo", "bar");
  searchParams.toString();
  // => "schedule_filter%5Bselected_date%5D=2020-09-07&foo=bar"
```

https://stackoverflow.com/questions/5999118/how-can-i-add-or-update-a-query-string-parameter