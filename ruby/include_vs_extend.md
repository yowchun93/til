# Include vs Extend in Ruby

Extend import module methods as class methods.
Ruby inserts the module in ancestor chain of
singleton class.

```ruby
module Logging
  def log(message)
    # log a message
  end
end

module Debug
  def debug(message)
    # debug
  end
end

class Service
  extend Logging
  include Debug
end

# #log will need to be called as a class method
Service.log "Something happened"
Service.new.debug "Something happened"
```