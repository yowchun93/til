# Overriding accessor method in Ruby

Sometimes you might find yourself in a situation where you want to override an accessor method
For example, if you have a field saved as string in database, but wants it to be integer upon being accessed.

```ruby
>
  def cutoff_period_quantity=(value)
    super(value.to_i)
  end
```