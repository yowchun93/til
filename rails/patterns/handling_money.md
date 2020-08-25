# Handling money in Rails

Money Ruby is a great way handle currency in Ruby
https://github.com/RubyMoney/money

Provides a great abstraction, a common API for dealint with money
If you happen to have code for handling currency sprinkled around the codebase. This is a great way to clean up the code.

``` ruby
  ## Code for manually getting currency symbol
  def get_currency_symbol(currency)
    case currency
    when 'HKD'
      'HK$'
    else
      'RM'
    end
  end

  def money_with_symbol(amount_currency, amount_cents)
    floated_cents = amount_cents.to_f
    if floated_cents < 0
      '-' << get_currency_symbol(amount_currency) << sprintf('%.2f', floated_cents.abs/100)
    else
      get_currency_symbol(amount_currency) << sprintf('%.2f', floated_cents/100)
    end
  end

  # With Ruby Money, you will only need to be concerned about the
  # currency
  money = Money.new(1000, "HKD")
  money.format #=> "$1.00"
```