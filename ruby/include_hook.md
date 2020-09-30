# Ruby module's included hook

```
module Validations
  def self.included(mod)
    puts "#{self} included in #{mod}"
    # Validations included in ActiveRecord
  end
end

module ActiveRecord
  include Validations
end
```