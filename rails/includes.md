# Using Includes in ActiveRecord

# References: https://scoutapm.com/blog/activerecord-includes-vs-joins-vs-preload-vs-eager_load-when-and-where
# https://www.speedshop.co/2019/01/10/three-activerecord-mistakes.html

# Includes
```ruby
  # without using includes
  # classic N + 1 problem, n number of query will be fired depending on number of categories
  item_names = Categories.map do |category|
    category.item.name
  end

  # includes will load record and (2) all record referenced as argument
  # only 1 query
  item_names Categories.includes(:item).map do |item|
    category.item.name
  end
```

# Using includes does not guarantee prevention of N + 1
```ruby
  ## item.colors will call 1 extra query
  item_names Categories.includes(:item).map do |item|
    category.item.colors.first
  end
```