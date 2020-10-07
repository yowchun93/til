# Understand yield in Ruby

```ruby
  def make_salad
    yield "lettuce"
    yield "carrots"
    yield "olive oil"
  end

  make_salad { |ingredient| puts "Adding #{ingredient} to salad"}

  # Sample used in 'money-rails' gem
  class MoneyRails::Configuration
    def configure
      yield self
    end
  end

  MoneyRails.configure do |config|
    config.default_currency = :myr
  end
```