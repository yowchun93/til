# Finding duplicate values in ruby using sets

Finding duplicates

```ruby
  arr = ['a','a','b','c']
  s = Set.new
  dup = arr.find { |e| !s.add?(e) }
  puts dup
  # "a"
```

