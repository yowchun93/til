## Querying JSONB columns in Rails

# Source:
# https://nandovieira.com/using-postgresql-and-jsonb-with-ruby-on-rails

```ruby
  prices = { "usd"=>1.0, "myr"=>0.0, "sgd"=>0.0, "tbh"=>0.0}

  Model.where("(price->>'usd') >= ?", 1.05)

  # querying when data is a float
  Model.where("(price->>'usd')::float >= ?", 1.05)
```