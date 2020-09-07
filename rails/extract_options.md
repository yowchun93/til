# Extract options

Extract options is part of ActiveSupport's libraries of utility methods
Usage example in Activemodel::Validation

```ruby
  validate :promo_code_is_not_expired,
           :promo_code_is_within_use_limit,
           :promo_code_is_not_redeemed,
           if: :promo_code

  class Validator
    extend ActiveSupport::CoreExtensions::Array::ExtractOptions

    def self.validate(*args, &block)
      options = args.extract_options!
      puts options
    end
  end
```